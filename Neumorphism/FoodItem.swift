//
//  FoodItem.swift
//  Neumorphism
//
//  Created by Adilet Berdibekov on 15.12.2021.
//

import Foundation

struct FoodItem: Identifiable {
    let imageName: String
    let title: String
    let id = UUID()
    
    static func example() -> [FoodItem] {
        [FoodItem(imageName: "image1", title: "Quickly"),FoodItem(imageName: "image2", title: "Breakfast"),FoodItem(imageName: "image3", title: "Celebratory"),FoodItem(imageName: "image4", title: "Dinner"),FoodItem(imageName: "image5", title: "Celebratory"),FoodItem(imageName: "image6", title: "Dinner"),]
    }
}
