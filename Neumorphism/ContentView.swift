//
//  ContentView.swift
//  Neumorphism
//
//  Created by Adilet Berdibekov on 13.12.2021.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        TabView {
            FoodGalleryView()
                .tag(1)
                .tabItem {
                    Label("Food", systemImage: "bell")
                }
            
            Text("Person")
                .tag(2)
                .tabItem{
                    Label("Person", systemImage: "person")
                }
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
