//
//  SearchViewPractise.swift
//  UdemySwiftUI
//
//  Created by Sourabh Modi on 14/06/24.
//

import SwiftUI

struct SearchResult: Identifiable{
    let id: UUID
    let title: String
    let description: String
}
struct SearchViewPractise: View {
    @State private var query: String = ""
    @State private var results: [SearchResult] = []
    @State private var isDetailView: Bool = false
    @State private var selectedResult: SearchResult?
    
    private let allResults = [
           SearchResult(id: UUID(), title: "Swift", description: "Description for Swift"),
           SearchResult(id: UUID(), title: "Java", description: "Description for java"),
           SearchResult(id: UUID(), title: "iOS", description: "Description for iOS"),
           SearchResult(id: UUID(), title: "Sourabh", description: "Description for sourabh"),
           SearchResult(id: UUID(), title: "Ahmet", description: "Description for Ahmet"),
           SearchResult(id: UUID(), title: "Alif", description: "Description for Alif")
       ]
    
    var body: some View {
        NavigationView {
            VStack {
                TextField("Search", text: $query, onCommit: search)
                    .textFieldStyle(RoundedBorderTextFieldStyle())
                    .padding()
                    .onChange(of: query, perform: {
                        value in search()
                    })
                
                List(results) { result in
                                   Button(action: {
                                       selectedResult = result
                                       isDetailView = true
                                   }) {
                                       HStack {
                                           Text(result.title)
                                           Spacer()
                                       }
                                   }
                                   .background(
                                       NavigationLink(
                                           destination: DetailView(result: selectedResult),
                                           isActive: $isDetailView,
                                           label: {
                                               EmptyView()
                                           })
                                           .hidden()
                                   )
                               }
                           }
                           .navigationTitle("Search")
    }
}
    func search() {
            // Dummy data for search results
        if query.isEmpty {
            results = []
        } else {
            results = allResults.filter{
                $0.title.lowercased().contains(query.lowercased())
            }
        }
        }
    }

struct DetailView: View {
    var result: SearchResult?

    var body: some View {
        VStack {
            if let result = result {
                Text(result.title)
                    .font(.largeTitle)
                    .padding()
                Text(result.description)
                    .padding()
            } else {
                Text("No result selected")
            }
        }
        .navigationTitle("Detail")
    }
}
#Preview {
    SearchViewPractise()
}
