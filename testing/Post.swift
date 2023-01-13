//  Project: testing 
// Created by Jason Stout on 1/13/23.
//
// Using Swift 5.0
// Running on macOS 13.0
// Post
//
// "Design is not just what it looks like and feels like. Design is how it works." - Steve Jobs

import SwiftUI
import FirebaseFirestore
import FBService

struct Post: Codable, Firestorable, Equatable {
    var uid: String
    var value: String
    var timestamp: Timestamp
    
    init(uid: String? = nil, value: String?, timestamp: Timestamp? = nil) {
        self.uid = uid ?? ""
        self.value = value ?? ""
        self.timestamp = timestamp ?? Timestamp(date: Date())
    }
}
