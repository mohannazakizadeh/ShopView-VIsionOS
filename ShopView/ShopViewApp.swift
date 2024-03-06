//
//  ShopViewApp.swift
//  ShopView
//
//  Created by Mohanna Zakizadeh on 3/3/24.
//

import SwiftUI

@main
struct ShopViewApp: App {
    
    @UIApplicationDelegateAdaptor(AppDelegate.self) private var appDelegate
    
    var body: some Scene {
        WindowGroup {
            ContentView()
        }

        ImmersiveSpace(id: "ImmersiveSpace") {
            ImmersiveView()
        }
    }
}
