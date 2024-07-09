//
//  ButtonPractise.swift
//  UdemySwiftUI
//
//  Created by Sourabh Modi on 18/05/24.
//

import SwiftUI
struct AppButtonUIModel{
  let title:String
  let color:Color
  let font:Font
}
struct ButtonPractise: View {
    private let uiModel:AppButtonUIModel
    private let action: ()-> Void
    
    init(uiModel:AppButtonUIModel,action:@escaping () -> Void){
        self.uiModel = uiModel
        self.action = action
        
    }
    var body: some View {
        Button(action: action) {
            Text(uiModel.title)
                .font(uiModel.font)
                .foregroundColor(uiModel.color)
        }
    }
    
}

#Preview {
    ButtonPractise(uiModel: AppButtonUIModel(title: "i'm new here", color: Color.blue, font: .body)) {
        print("Button clicked......")
    }
}
