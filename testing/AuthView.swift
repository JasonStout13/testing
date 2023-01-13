//  Project: testing 
// Created by Jason Stout on 1/13/23.
//
// Using Swift 5.0
// Running on macOS 13.0
// AuthView
//
// "Design is not just what it looks like and feels like. Design is how it works." - Steve Jobs

import SwiftUI
import FBService

struct AuthView: View {
    @State private var email = ""
    @State private var password = ""
    
    var body: some View {
        VStack {
            Spacer()
            
            TextField("Email:", text: $email)
            
            SecureField("Password:", text: $password)
            
            Button("Login") {
                login()
            }
        }
        .padding()
        .textFieldStyle(.roundedBorder)
    }
    
    func login() {
        Task {
            try await AuthService.login(withEmail: email, password: password)
        }
    }
}

struct AuthView_Previews: PreviewProvider {
    static var previews: some View {
        AuthView()
    }
}
