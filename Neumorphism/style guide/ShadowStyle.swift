//
//  ShadowStyle.swift
//  Neumorphism
//
//  Created by Adilet Berdibekov on 13.12.2021.
//

import SwiftUI

struct ShadowStyle: View {
    var body: some View {
        VStack(spacing: 30) {
            Text("Shadows")
            
            Color("AccentColor")
                .frame(width: 100, height: 100)
                .cornerRadius(20)
                .modifier(NeumorphicShadow(isLigth: true))
            
            Color("AccentColor")
                .frame(width: 100, height: 100)
                .cornerRadius(20)
                .modifier(NeumorphicShadow(isLigth: false))
        }
        
    }
}

struct NeumorphicShadow: ViewModifier {
    
    let isLigth: Bool
    
    var lightShadowColor: Color {
        isLigth ? Color("ShadowColorYellow") : Color("ShadowColorLight")
    }
    
    func body(content: Content) -> some View {
        content
            .shadow(color: Color("ShadowColorGrey"), radius: 10, x: 5, y: 5)
            .shadow(color: lightShadowColor, radius: 10, x: -5, y: -5)
    }
}

struct ShadowStyle_Previews: PreviewProvider {
    static var previews: some View {
        ShadowStyle()
    }
}
