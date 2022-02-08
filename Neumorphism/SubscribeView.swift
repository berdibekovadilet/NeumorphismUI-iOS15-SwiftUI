//
//  SubscribeView.swift
//  Neumorphism
//
//  Created by Adilet Berdibekov on 14.12.2021.
//

import SwiftUI

struct SubscribeView: View {
    
    @Binding var email: String
    
    var body: some View {
        NavigationView {
            VStack(alignment: .leading, spacing: 16) {
                Text("Subscribe")
                    .titleStyle()
                
                Text("Subscribe to our newsletter & stay updated for more posts.")
                    .bodyStyle()
                    .padding(.bottom, 32)
                
                TextField("email", text: $email)
                    .textFieldStyle(RedTextFieldStyle())
                    .padding(.bottom, 8)
                
                Button(action: /*@START_MENU_TOKEN@*/{}/*@END_MENU_TOKEN@*/) {
                    Text("Submit")
                }
                .buttonStyle(LargePrimaryButtonStyle())
                
            //    Spacer()
            }
          //  .padding(.top, 170)
            .padding(.horizontal, 24)
            .toolbar {
                ToolbarItem(placement: .navigationBarLeading) {
                    Button {
                        
                    } label: {
                        Label("mail", image: "mail")
                    }
                }
            }
        }
    }
}

struct SubscribeView_Previews: PreviewProvider {
    static var previews: some View {
        SubscribeView(email: .constant("nodo@adilet.swift"))
    }
}
