//
//  SearchableFunction.swift
//  UdemySwiftUI
//
//  Created by Sourabh Modi on 18/06/24.
//

import SwiftUI
import Foundation

struct SearchableFunction: View {
    
    @StateObject private var viewModel = SearchViewModel()
    
    var body: some View {
        Text("fdfdf")
//        NavigationStack {
//            List(viewModel.filteredItems) {
//                item in
//                Text(item.name)
//            }
//        }
//        .navigationTitle("Search")
//        .searchable(text: $viewModel.searchText)
//        .onChange(of: viewModel.searchText) { newValue in
//            viewModel.filterItems()
//        }
    }
}
#Preview {
    SearchableFunction()
}
