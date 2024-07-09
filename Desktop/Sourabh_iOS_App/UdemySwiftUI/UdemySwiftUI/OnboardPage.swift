//
//  OnboardPage.swift
//  UdemySwiftUI
//
//  Created by Sourabh Modi on 15/05/24.
//

import SwiftUI

struct OnboardPage: View {
    @State private var isTapped = false
    var body: some View {
        VStack(spacing:20){
            Text("Anket App")
                .font(.title)
                .fontWeight(/*@START_MENU_TOKEN@*/.bold/*@END_MENU_TOKEN@*/)
                .frame(width: 187,height: 54)
                .padding(.top,9)
            Spacer()
        }
        //.background(Color.blue)
        // .padding()
        .padding(.top,-20)
        VStack{
            Spacer()
            Image("QuestionImage")
                .resizable()
            //.scaledToFit()
                .frame(width:338,height: 338)
            
        }
        //.background(Color.red)
        
        .padding(.top,-400)
        Spacer()
        
        VStack{
            Text("Can't decide?")
                .frame(alignment:.center)
                .foregroundColor(/*@START_MENU_TOKEN@*/.blue/*@END_MENU_TOKEN@*/)
            Spacer()
            Text("You can vote and make polls!")
                .font(.system(size: 16))
                .lineSpacing(24)
                .frame(alignment: /*@START_MENU_TOKEN@*/.center/*@END_MENU_TOKEN@*/)
                .padding(.bottom,150)
            Spacer()
            
            
        }
        //.background(Color.gray)
        //     .padding(.top,-0.100)
        VStack{
            Button(action:{}) {
                Text("I'm new here")
                    .foregroundColor(.white)
               
                
                
            }
            .frame(width: 350,height: 50)
            .background(Color.blue)
            .cornerRadius(10)
            
            //.padding(.bottom,)
            
            
            
        }
        
        .padding(.bottom)
        
        VStack(spacing:20){
            Text("I have already an account")
                .frame(alignment:.center)
                .foregroundColor(/*@START_MENU_TOKEN@*/.blue/*@END_MENU_TOKEN@*/)
                .font(.system(size: 25))
            
        }
        
        VStack{
            Text("Continue without login/signup")
                .onTapGesture {
                    isTapped.toggle()
                }
                .foregroundColor(/*@START_MENU_TOKEN@*/.blue/*@END_MENU_TOKEN@*/)
        }
        // .padding()
    }
}

#Preview {
    OnboardPage()
}

extension CGFloat {
    /// The smallest amount of padding. Use for extra tight spacing.
    static let paddingXxs: CGFloat = 4
    
    /// A slightly larger amount of padding than `paddingXxs`.
    static let paddingXs: CGFloat = 8
    
    /// A small amount of padding.
    static let paddingS: CGFloat = 12
    
    /// A moderate amount of padding. The default padding value.
    static let paddingM: CGFloat = 16
    
    /// A relatively large amount of padding.
    static let paddingL: CGFloat = 24
    
    /// A very large amount of padding.
    static let paddingXl: CGFloat = 32
}

