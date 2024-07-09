//
//  ForEachBootcamp.swift
//  UdemySwiftUI
//
//  Created by Sourabh Modi on 21/06/24.
//

import SwiftUI

struct ForEachBootcamp: View {
    var body: some View {
        VStack {
            
            ForEach(0..<10) { index in
                Text("Sourabh-\(index)")
            }
        }
    }
}

#Preview {
    ForEachBootcamp()
}
