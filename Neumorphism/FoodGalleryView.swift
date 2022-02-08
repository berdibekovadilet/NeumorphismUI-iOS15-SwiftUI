//
//  FoodGalleryView.swift
//  Neumorphism
//
//  Created by Adilet Berdibekov on 14.12.2021.
//

import SwiftUI

struct FoodGalleryView: View {
    @State private var text: String = ""
    let items = FoodItem.example()
    var rows: [GridItem] =
            Array(repeating: .init(.flexible(minimum: 100, maximum: 700)), count: 2)
    
    
    var body: some View {
        ScrollView {
            VStack {
                Text("What to eat?")
                    .boldBodyStyle()
                    
                ZStack(alignment: .trailing) {
                        TextField("Search eat", text: $text)
                            .textFieldStyle(RedTextFieldStyle())
                        Button(action: /*@START_MENU_TOKEN@*/{}/*@END_MENU_TOKEN@*/) {
                            Image(systemName: "magnifyingglass")
                        }
                        .buttonStyle(IconButtonStyle())
                }
                .padding(.vertical, 40)
                
                LazyVGrid(columns: rows, alignment: .leading, spacing: 24) {
                    ForEach(items) { item in
                        CardView(item: item)
                    }
                }
            }
            .padding(24)
        }
        
    }
}

struct FoodGalleryView_Previews: PreviewProvider {
    static var previews: some View {
        FoodGalleryView()
    }
}

struct CardView: View {
    let item: FoodItem
    var body: some View {
        VStack(spacing: 16) {
            Image(item.imageName)
                .resizable()
                .aspectRatio(1, contentMode: .fill)
                .clipped()
                .cornerRadius(24)
            
            Text(item.title)
                .bodyStyle()
        }
    }
}
