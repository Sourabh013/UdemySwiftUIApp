//
//  BackgrounfAndOverlauBootcamp.swift
//  UdemySwiftUI
//
//  Created by Sourabh Modi on 07/06/24.
//

import SwiftUI

struct BackgrounfAndOverlauBootcamp: View {
    var body: some View {
        Text(/*@START_MENU_TOKEN@*/"Hello, World!"/*@END_MENU_TOKEN@*/)
            .background(
            Circle()
                .fill(LinearGradient(gradient: Gradient(colors: [Color.yellow, Color.blue]), startPoint: .leading, endPoint: .trailing))
                .frame(width: 200,height: 200)
            )
            .background(
                Circle()
                    .fill(Color.gray)
                .frame(width: 220,height: 300)
            )

    }
}

#Preview {
    BackgrounfAndOverlauBootcamp()
}
