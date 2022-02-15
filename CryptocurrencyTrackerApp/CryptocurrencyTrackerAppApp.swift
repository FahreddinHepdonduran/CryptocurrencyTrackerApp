//
//  CryptocurrencyTrackerAppApp.swift
//  CryptocurrencyTrackerApp
//
//  Created by fahreddin on 4.02.2022.
//

import SwiftUI
import Firebase
@main
struct CryptocurrencyTrackerAppApp: App {
    init() {
        FirebaseApp.configure()
    }
    
    var body: some Scene {
        WindowGroup {
            ContentView()
        }
    }
}
