//
//  TextStyle.swift
//  Neumorphism
//
//  Created by Adilet Berdibekov on 13.12.2021.
//

import SwiftUI

struct TextStyle: View {
    var body: some View {
        VStack {
            Text("Title")
               // .modifier(TitleStyle())
                .titleStyle()
            
            Text("BoldBody")
                .boldBodyStyle()
            
            Text("Body")
                .bodyStyle()
            
            Text("caption")
                .captionStyle()
            
            Text("system font")
                .font(.largeTitle)
        }
       
    }
}

struct Style {
    static let fontNameSemoBold = "AvenirNext-Semibold"
    static let fontNameMedium = "AvenirNext-Medium"
}

extension View {
    public func titleStyle() -> some View {
        modifier(TitleStyle())
    }
    
    public func bodyStyle() -> some View {
        modifier(BodyStyle())
    }
    
    public func boldBodyStyle() -> some View {
        modifier(BoldBodyStyle())
    }
    
    public func captionStyle() -> some View {
        modifier(CaptionStyle())
    }
}

struct TitleStyle: ViewModifier {
    func body(content: Content) -> some View {
        content
            .font(.custom(Style.fontNameSemoBold, size: 48, relativeTo: .title))
    }
}

struct BodyStyle: ViewModifier {
    func body(content: Content) -> some View {
        content
            .font(.custom(Style.fontNameMedium, size: 20, relativeTo: .body))
    }
}

struct BoldBodyStyle: ViewModifier {
    func body(content: Content) -> some View {
        content
            .font(.custom(Style.fontNameSemoBold, size: 20, relativeTo: .body))
    }
}

struct CaptionStyle: ViewModifier {
    func body(content: Content) -> some View {
        content
            .font(.custom(Style.fontNameSemoBold, size: 14, relativeTo: .caption))
    }
}


struct TextStyle_Previews: PreviewProvider {
    static var previews: some View {
        TextStyle()
    }
}
