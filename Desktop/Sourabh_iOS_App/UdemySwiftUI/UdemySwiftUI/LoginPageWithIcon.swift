////
////  LoginFormTextField.swift
////  Opinino
////
////  Created by Fatih Eren Ozcelik on 17.05.2024
////  Copyright © 2024 Zeytech Inc. All rights reserved.
////
//
//import SwiftUI
//
//struct LoginFormTextFieldUIModel {
//    let placeholder: String
//    let iconName: String?
//    let isSecuredField: Bool
//    let keyboardType: UIKeyboardType
//}
//
//struct LoginFormTextField: View {
//    
//    private let uiModel: LoginFormTextFieldUIModel
//    @State var text: Binding<String>
//    @State private var isTextSecured: Bool = true
//    @FocusState private var textFieldFocused: Bool
//    private let animationDuration: TimeInterval = 0.2
//    
//    init(uiModel: LoginFormTextFieldUIModel, text: Binding<String>) {
//        self.uiModel = uiModel
//        self.text = text
//    }
//    
//    var body: some View {
//        HStack(spacing: .paddingS) {
//            textFieldIconView()
//            
//            Group {
//                if uiModel.isSecuredField {
//                    HStack(spacing: .paddingXs) {
//                        if isTextSecured {
//                            securedFieldView()
//                        } else {
//                            textFieldView()
//                        }
//                        toggleIsTextSecuredButton()
//                    }
//                } else {
//                    textFieldView()
//                }
//            }
//            .textInputAutocapitalization(.never)
//            .keyboardType(uiModel.keyboardType)
//        }
//        .animation(.spring(duration: animationDuration), value: textFieldFocused)
//        .frame(maxHeight: 30)
//        .padding(.paddingS)
//        .background(RoundedRectangle(cornerRadius:8)
//            .strokeBorder(.blue, lineWidth: textFieldFocused ? 1 : 0)
//            .background(RoundedRectangle(cornerRadius: 10).fill(.blue))
//        )
//    }
//    
//    // MARK: - View functions
//    
//    @ViewBuilder
//    private func textFieldIconView() -> some View {
//        Group {
//            if let iconName = uiModel.iconName {
//                Image(systemName: iconName)
//                    .frame(width: 20)
//                    .foregroundStyle(textFieldFocused ? .blue : .gray)
//                
//                Rectangle()
//                    .frame(width: 1)
//                    .foregroundStyle(textFieldFocused ? .appBlue : .appGray.opacity(0.3))
//            }
//        }
//    }
//    
//    @ViewBuilder
//    private func textFieldView() -> some View {
//        TextField(uiModel.placeholder, text: text)
//            .font(.regular.title3)
//            .focused($textFieldFocused)
//    }
//    
//    @ViewBuilder
//    private func securedFieldView() -> some View {
//        SecureField(uiModel.placeholder, text: text)
//            // no need to define the font, because this shows only big dots to secure the text
//            .focused($textFieldFocused)
//    }
//    
//    @ViewBuilder
//    private func toggleIsTextSecuredButton() -> some View {
//        Button(action: {
//            isTextSecured.toggle()
//        }) {
//            Image(systemName: self.isTextSecured ? "eye.slash" : "eye")
//                .foregroundStyle(.appGray)
//        }
//    }
//}
//
//#Preview {
//    VStack(spacing: .paddingS) {
//        LoginFormTextField(
//            uiModel: LoginFormTextFieldUIModel(
//                placeholder: "Email",
//                iconName: "person.fill",
//                isSecuredField: false,
//                keyboardType: .emailAddress
//            ),
//            text: .constant("text")
//        )
//        
//        LoginFormTextField(
//            uiModel: LoginFormTextFieldUIModel(
//                placeholder: "Password",
//                iconName: "key.horizontal.fill",
//                isSecuredField: true,
//                keyboardType: .default
//            ),
//            text: .constant("text")
//        )
//        
//        LoginFormTextField(
//            uiModel: LoginFormTextFieldUIModel(
//                placeholder: "Email",
//                iconName: nil,
//                isSecuredField: false,
//                keyboardType: .emailAddress
//            ),
//            text: .constant("text")
//        )
//    }
//    .padding(.paddingM)
//}
