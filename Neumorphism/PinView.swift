//
//  PinView.swift
//  Neumorphism
//
//  Created by Adilet Berdibekov on 14.12.2021.
//

import SwiftUI

struct PinView: View {
    
    @State private var first = ""
    @State private var second = ""
    @State private var third = ""
    @State private var forth = ""
    
    var body: some View {
        NavigationView {
            VStack(alignment: .leading, spacing: 24) {
               
                Text("PIN")
                    .titleStyle()
                
                Text("Please enter your PIN code")
                    .bodyStyle()
                    .padding(.bottom, 70)
                
                HStack(spacing: 24) {
                    TextField("", text: $first)
                    TextField("", text: $second)
                    TextField("", text: $third)
                    TextField("", text: $forth)
                }
                .textFieldStyle(RedTextFieldStyle())
                .textContentType(.telephoneNumber)
                
                Button(action: /*@START_MENU_TOKEN@*/{}/*@END_MENU_TOKEN@*/) {
                    Text("Submit")
                }
                .buttonStyle(LargePrimaryButtonStyle())
            }
            .padding(.horizontal, 24)
            .toolbar {
                ToolbarItem(placement: .navigationBarLeading) {
                    Button {
                        
                    } label: {
                        Label("shield", image: "shield")
                    }
                }
            }
        }
    }
}

struct PinView_Previews: PreviewProvider {
    static var previews: some View {
        PinView()
    }
}
