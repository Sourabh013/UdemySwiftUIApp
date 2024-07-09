//
//  ExampleSearchText.swift
//  UdemySwiftUI
//
//  Created by Sourabh Modi on 19/06/24.
//

import SwiftUI
/*
struct ExampleSearchText: View {
    
    var body: some View {
            VStack {
                Text("Sourabh......")
                Text("Sourabh Modi from Dewas")
                Text("iOS developer role")
            }
            Spacer()
            VStack {
                Text("Shubham......")
                Text("Shubham Modi from indore")
                Text("Android developer role")
            }
            Spacer()
        }
  
}

#Preview {
    ExampleSearchText()
}
*/

struct ExampleSearchText: View {
    @StateObject private var viewModel = SearchViewModel()
    
    var body: some View {
        NavigationStack {
            ScrollView {
                VStack(alignment: .leading, spacing: 10) {
                    ForEach(viewModel.filteredTexts, id: \.self) { text in
                        Text(text)
                            .padding()
                            .background(Color.gray.opacity(0.2))
                            .cornerRadius(8)
                    }
                }
                .padding()
            }
            .navigationTitle("Search Text")
            .searchable(text: $viewModel.searchText)
        }
    }
}

#Preview {
    ExampleSearchText()
}
