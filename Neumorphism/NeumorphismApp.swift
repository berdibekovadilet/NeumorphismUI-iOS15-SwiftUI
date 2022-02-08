//
//  NeumorphismApp.swift
//  Neumorphism
//
//  Created by Adilet Berdibekov on 13.12.2021.
//

import SwiftUI

@main
struct NeumorphismApp: App {
    @State private var email = ""
    var body: some Scene {
        WindowGroup {
            SubscribeView(email: $email)
        }
    }
}
