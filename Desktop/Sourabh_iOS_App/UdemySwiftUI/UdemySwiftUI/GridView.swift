//
//  GridView.swift
//  UdemySwiftUI
//
//  Created by Sourabh Modi on 14/05/24.
//

import SwiftUI

struct GridView: View {
    @State private var name:String = ""
    var body: some View {

        VStack{
            Spacer().frame(height:10)
            Grid(verticalSpacing: 5){
                Grid{
                    GridRow{
                        Text("Hello......")
                            .font(.largeTitle)
                            .fontWeight(/*@START_MENU_TOKEN@*/.bold/*@END_MENU_TOKEN@*/)
                            .foregroundStyle(.blue)
                        Image(systemName: "cloud")
                            .resizable()
                            .frame(width: /*@START_MENU_TOKEN@*/100/*@END_MENU_TOKEN@*/,height: 70)
                    }
                  GridRow{
                        Text("Message...")
                            .font(.largeTitle)
                            .foregroundStyle(.red)
                            .fontWeight(/*@START_MENU_TOKEN@*/.bold/*@END_MENU_TOKEN@*/)
                            Image(systemName: "message")
                            .resizable()
                            .frame(width: /*@START_MENU_TOKEN@*/100/*@END_MENU_TOKEN@*/,height: 70)
                    }
                    GridRow{
                        TextField("Enter your Name",text: $name)
                            .padding()
                            .textFieldStyle(RoundedBorderTextFieldStyle())
                    }
                }
                .padding(.all)
            }
            Spacer()
            
        }
        //.padding()
        
        
        .safeAreaInset(edge:.top, content: {
            HStack{
                Spacer()
                Text("Hello Pikachu")
                    .padding()
                Spacer()
            }
            .background(Color.red)
        })
        .safeAreaInset(edge:.bottom, content: {
            HStack{
                Spacer()
                /*@START_MENU_TOKEN@*/Text("Placeholder")/*@END_MENU_TOKEN@*/
                    .padding()
                Spacer()
            }
            .background(Color.gray)

        })         

    }
}

#Preview {
    GridView()
}
