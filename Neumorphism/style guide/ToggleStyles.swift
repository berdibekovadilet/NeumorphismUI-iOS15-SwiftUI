//
//  ToggleStyle.swift
//  Neumorphism
//
//  Created by Adilet Berdibekov on 13.12.2021.
//

import SwiftUI

struct ToggleStyles: View {
    var body: some View {
        VStack {
            Text("Toggles")
            
            Toggle("toggle isOn", isOn: .constant(true))
                .toggleStyle(AccentToggleStyle(isLabelHiddem: false))
            
            Toggle("toggle isOff", isOn: .constant(false))
                .toggleStyle(AccentToggleStyle(isLabelHiddem: true))

        }
        .padding()
    }
}

struct AccentToggleStyle: ToggleStyle {
    
    let isLabelHiddem: Bool
    let size: CGFloat = 44

    func makeBody(configuration: Configuration) -> some View {
        return HStack {
            if !isLabelHiddem {
                configuration.label
                Spacer()
            }
            
            
            HStack(spacing: 16) {
                if configuration.isOn {
                    Text("on")
                        .boldBodyStyle()
                        .foregroundColor(.white)
                        .frame(width: 44, height: 44)
                       
                }
                Circle()
                    .fill(.white)
                    .frame(width: 44, height: 44)
                    .shadow(color: Color("ShadowColorGrey"), radius: 2, x: 0, y: 2)
                    
                
                if !configuration.isOn {
                    Text("off")
                        .boldBodyStyle()
                        .foregroundColor(Color("GrayTextColor"))
                        .frame(width: 44, height: 44)
                        
                }
            }
            .padding(8)
            .background(Capsule().fill(configuration.isOn ? Color("AccentColor") : Color("DisabledButtonColor"))
                
                .modifier(NeumorphicShadow(isLigth: configuration.isOn)))
        }
    }
}


struct ToggleStyles_Previews: PreviewProvider {
    static var previews: some View {
        ToggleStyles()
    }
}
