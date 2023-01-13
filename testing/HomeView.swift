//  Project: testing 
// Created by Jason Stout on 1/13/23.
//
// Using Swift 5.0
// Running on macOS 13.0
// HomeView
//
// "Design is not just what it looks like and feels like. Design is how it works." - Steve Jobs

import SwiftUI
import FBService
import FirebaseFirestore

struct HomeView: View {
    @FirestoreFetch("post", sort: .init(orderBy: "timestamp", type: Timestamp.self, descending: true)) var posts: [Post]
    var body: some View {
        List(posts, id: \.uid) { post in
            VStack(alignment: .leading) {
                Text(post.value)
                Text(post.timestamp.dateValue().formatted(.dateTime))
                    .font(.caption)
                    .foregroundColor(.gray)
            }
        }
        .toolbar {
            ToolbarItem(placement: .cancellationAction) {
                Button("Logout") {
                    logout()
                }
            }
            
            ToolbarItem(placement: .primaryAction) {
                Button {
                    addPost()
                } label: {
                    Image(systemName: "plus")
                }
            }
        }
    }
    
    func addPost() {
        let post = Post(value: "Post #\(Int.random(in: 0 ... 1000))")
        try? _posts.manager.create(post)
    }
    
    func logout() {
        Task {
            try await AuthService.logout()
        }
    }
}

struct HomeView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
