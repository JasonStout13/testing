//  Project: testing 
// Created by Jason Stout on 1/12/23.
//
// Using Swift 5.0
// Running on macOS 13.0
// ContentView
//
// "Design is not just what it looks like and feels like. Design is how it works." - Steve Jobs

import SwiftUI

struct ContentView: View {
    var body: some View {
        VStack {
            Image(systemName: "globe")
                .imageScale(.large)
                .foregroundColor(.accentColor)
            Text("Hello, world!")
        }
        .padding()
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
