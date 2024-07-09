//
//  SignupForm.swift
//  UdemySwiftUI
//
//  Created by Sourabh Modi on 14/05/24.
//

import SwiftUI

struct SignupForm: View {
    @State private var fName:String = ""
    @State var lName:String = ""
    @State var mobile:String = ""
    var body: some View {
        RoundedRectangle(cornerRadius: /*@START_MENU_TOKEN@*/25.0/*@END_MENU_TOKEN@*/)
            .stroke(Color.red,lineWidth: 10)
            .fill(
            LinearGradient(
                gradient: Gradient(colors: [Color.brown,Color.blue]), startPoint:.top, endPoint: .bottom
            )
            
           
            )
            .overlay(content: {
                VStack{
                    
                    Text("Signup Form")
                        .fontWeight(/*@START_MENU_TOKEN@*/.bold/*@END_MENU_TOKEN@*/)
                        .fontDesign(.rounded)
                        .font(.largeTitle)
                    VStack(alignment: .leading, spacing:10 ) {
                        
                       Text("Enter First Name")
                            .padding(.leading,20)
                       TextField("First Name", text: $fName)
                            .textFieldStyle(RoundedBorderTextFieldStyle())
                            .padding(.leading,20)
                           // .frame(width: 300)
                        
                        Text("Enter Last Name")
                            .padding(.leading,20)
                            .padding(.top,20)
                        TextField("Last Name", text: $lName)
                            .textFieldStyle(RoundedBorderTextFieldStyle())
                            .padding(.leading,20)
                            .frame(width: 300)
                        
                        Text("Enter Contact No.")
                            .padding(.leading,20)
                            .padding(.top,20)
                        TextField("Mobile Number",text: $mobile)
                            .textFieldStyle(RoundedBorderTextFieldStyle())
                            .padding(.leading,20)
                            .frame(width: 300)
                        
                    }
                    .padding()
               
                    
                }
                .padding(.top,-350)
            }
            )
             
            .frame(width: 400,height: 880)
             
            
       
    }
    
}


#Preview {
    SignupForm()
}
