//
//  SearchViewModel.swift
//  UdemySwiftUI
//
//  Created by Sourabh Modi on 18/06/24.
//


/*
struct Item: Identifiable {
    let id = UUID()
    let name: String
}

class SearchViewModel: ObservableObject {
    @Published var pool:String = "Sourabh modi isddd dfdfdjf fdkfdkk"
    @Published var survey:String = "jfkdj uie sa ta hgra dfdfdf"
    
    @Published var items: [Item] = [
           Item(name: "Apple"),
           Item(name: "Banana"),
           Item(name: "Cherry"),
           Item(name: "Date"),
           Item(name: "Elderberry"),
           Item(name: "Fig"),
           Item(name: "Grape")
       ]
    
    @Published var searchText: String = ""

    var filteredItems: [Item] {
        if searchText.isEmpty {
            
            return items
        }
        else {
            return items.filter{$0.name.localizedCaseInsensitiveContains(searchText)}
        }
    }
}
*/

import Foundation
import Combine
import SwiftUI
class SearchViewModel: ObservableObject {
    @Published var searchText: String = "" {
        didSet {
            filterText()
        }
    }
    
    @Published var filteredTexts: [String] = []
    private var allTexts: [String] = []
    
    init() {
        fetchData()
    }
    
    func fetchData() {
        // Simulate dynamic data fetching
        DispatchQueue.global().asyncAfter(deadline: .now() + 1) {
            let fetchedTexts = [
                "Sourabh......",
                "Sourabh Modi from Dewas",
                "iOS developer role",
                "Shubham......",
                "Shubham Modi from Indore",
                "Android developer role"
            ]
            DispatchQueue.main.async {
                self.allTexts = fetchedTexts
                self.filterText()
            }
        }
    }
    
    func filterText() {
        if searchText.isEmpty {
            filteredTexts = allTexts
        } else {
            filteredTexts = allTexts.filter { $0.localizedCaseInsensitiveContains(searchText) }
        }
    }
}


