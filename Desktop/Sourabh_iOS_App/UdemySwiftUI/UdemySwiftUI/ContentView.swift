//
//  ContentView.swift
//  UdemySwiftUI
//
//  Created by Sourabh Modi on 10/05/24.
//

import SwiftUI

struct ContentView: View {
    @State private var name:String = ""
    @State private var colorActive:Bool = false
    var body: some View {
        VStack {
            TextField("Enter your Name",text: $name)
                .padding()
                .textFieldStyle(RoundedBorderTextFieldStyle())
            Image(systemName: "globe")
                .imageScale(.large)
                .foregroundStyle(.tint)
            Text("Hello, world!")
                .font(.title2)
                
                .frame(width: 250,height: 100)
                .background(Color.gray)
                .padding(20)
                .border(Color.red, width: 10)
                
        }
        .padding()
        VStack(spacing:20){
            Text("Default title")
                .padding()
                .background(colorActive ? Color.red : Color.yellow)
            
            Button("Change Color") {
                colorActive.toggle()
            }
            Spacer()
        }
        .padding()
    }
}

#Preview {
    ContentView()
}
