//
//  TextFieldStyleGuide.swift
//  Neumorphism
//
//  Created by Adilet Berdibekov on 14.12.2021.
//

import SwiftUI

struct TextFieldStyleGuide: View {
    var body: some View {
        VStack (spacing: 20) {
        Text("TextField")
            TextField("", text: .constant("text style"))
                .textFieldStyle(RoundedBorderTextFieldStyle())
            
            TextField("", text: .constant("text style"))
                .textFieldStyle(RedTextFieldStyle())
        }
        .padding()
    }
}

struct RedTextFieldStyle: TextFieldStyle {
    
    enum TextFieldState {
        case active
        case inActive
        case notFullfilled
        case okay
        case error
    }
    
    let gradient = LinearGradient(colors: [Color("TextFieldColor"), Color("BackgroundColor1")], startPoint: .topLeading, endPoint: .bottomTrailing)
    let cornerRadius: CGFloat = 16
    
    func _body(configuration: TextField<Self._Label>) -> some View {
        configuration
            .modifier(BoldBodyStyle())
            .foregroundColor(Color("GrayTextColor"))
            .padding()
            .background(RoundedRectangle(cornerRadius: cornerRadius).fill(gradient))
            .overlay(RoundedRectangle(cornerRadius: cornerRadius).stroke(Color.accentColor, lineWidth: 1))
    }
}

struct TextFieldStyleGuide_Previews: PreviewProvider {
    static var previews: some View {
        TextFieldStyleGuide()
    }
}
