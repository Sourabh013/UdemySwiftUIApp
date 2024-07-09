//
//  ImagePractice.swift
//  UdemySwiftUI
//
//  Created by Sourabh Modi on 10/05/24.
//

import SwiftUI

struct ImagePractice: View {
    var body: some View {
      
        VStack{
            Spacer()
            HStack{
                Image("Pikachu")
                    .font(.largeTitle)
                VStack(alignment: .leading){
                    Text("Hello Sourabh")
                }
                Spacer()
            }
            
        }.safeAreaInset(edge:.bottom, content: {
            HStack{
                Spacer()
                Text("Hello Pikachu")
                    .padding()
                Spacer()
            }
            .background(Color.red)
        })
        .safeAreaInset(edge:.top, content: {
            HStack{
                Spacer()
                Text("Hello Sourabh.....")
                    .padding()
                Spacer()
            }
            .background(Color.red)
        })
    }
}

#Preview {
    ImagePractice()
}
