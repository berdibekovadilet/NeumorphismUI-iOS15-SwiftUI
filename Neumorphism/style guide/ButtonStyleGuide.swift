//
//  ButtonStyleGuide.swift
//  Neumorphism
//
//  Created by Adilet Berdibekov on 13.12.2021.
//

import SwiftUI

struct ButtonStyleGuide: View {
    var body: some View {
        VStack(spacing: 30) {
            Text("Button Styles")
            Button(action: {
                
            }) {
                Text("small primary button style")
                    
            }
            .buttonStyle(SmallPrimaryButtonStyle())
            
            Button(action: {
                
            }) {
                Text("small primary button style - disabled")
                    
            }
            .buttonStyle(SmallPrimaryButtonStyle())
            .disabled(true)
            
            Button(action: {
                
            }) {
                Text("large primary button style")
                    
            }
            .buttonStyle(LargePrimaryButtonStyle())
            
            Button(action: {
                
            }) {
                Image(systemName: "magnifyingglass")
                    
            }
            .buttonStyle(IconButtonStyle())
        }
    }
}

struct SmallPrimaryButtonStyle: ButtonStyle {
    @Environment(\.isEnabled) var isEnabled
    
    var backgroundColor: Color {
        isEnabled ? Color("AccentColor") : Color("DisabledButtonColor")
    }
    
    var textColor: Color {
        isEnabled ? Color.white : Color("GrayTextColor")
    }
    
    func makeBody(configuration: Configuration) -> some View {
        configuration.label
            .captionStyle()
            .foregroundColor(textColor)
            .padding(12.5)
            .background(Capsule()
                            .fill(backgroundColor))
                            .modifier(NeumorphicShadow(isLigth: isEnabled))
            
    }
}

struct LargePrimaryButtonStyle: ButtonStyle {
    @Environment(\.isEnabled) var isEnabled
    
    var backgroundColor: Color {
        isEnabled ? Color("AccentColor") : Color("DisabledButtonColor")
    }
    
    var textColor: Color {
        isEnabled ? Color.white : Color("GrayTextColor")
    }
    
    func makeBody(configuration: Configuration) -> some View {
        configuration.label
            .boldBodyStyle()
            .foregroundColor(textColor)
            .padding(18)
            .frame(maxWidth: .infinity)
            .background(Capsule()
                            .fill(backgroundColor))
                            .modifier(NeumorphicShadow(isLigth: isEnabled))
            
    }
}

struct IconButtonStyle: ButtonStyle {
    @Environment(\.isEnabled) var isEnabled
    
    var backgroundColor: Color {
        isEnabled ? Color("AccentColor") : Color("DisabledButtonColor")
    }
    
    var textColor: Color {
        isEnabled ? Color.white : Color("GrayTextColor")
    }
    
    func makeBody(configuration: Configuration) -> some View {
        configuration.label
            .font(.system(size: 24))
            .foregroundColor(textColor)
            .padding(18)
            .frame(width: 64, height: 64)
            .background(RoundedRectangle(cornerRadius: 16)
                            .fill(backgroundColor))
                            .modifier(NeumorphicShadow(isLigth: isEnabled))
            
    }
}

struct ButtonStyleGuide_Previews: PreviewProvider {
    static var previews: some View {
        ButtonStyleGuide()
    }
}
