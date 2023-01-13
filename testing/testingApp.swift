//  Project: testing 
// Created by Jason Stout on 1/12/23.
//
// Using Swift 5.0
// Running on macOS 13.0
// testingApp
//
// "Design is not just what it looks like and feels like. Design is how it works." - Steve Jobs

import SwiftUI
import FirebaseCore
import FBService

@main
struct testingApp: App {
    @StateObject private var authState = AuthState()
    
    init() {
        FirebaseApp.configure()
    }
    
    var body: some Scene {
        WindowGroup {
            Group {
                switch authState.value {
                case .undefined:
                    ProgressView()
                case .notAuthenticated:
                    AuthView()
                case .authenticated:
                    NavigationStack {
                        ContentView()
                    }
                }
            }
        }
    }
}
