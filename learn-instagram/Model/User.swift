//
//  User.swift
//  learn-instagram
//
//  Created by Wilbert Devin Wijaya on 29/11/23.
//

import Foundation
import Firebase

struct User: Identifiable, Hashable, Codable {
    let id: String
    var username: String
    var profileImageUrl: String?
    var fullname: String?
    var bio: String?
    let email: String
    
    var isCurrentUser: Bool {
        guard let currentUid = Auth.auth().currentUser?.uid else { return false }
        return currentUid == id
    }
}

extension User {
    static var MOCK_USERS: [User] = [
        .init(id: NSUUID().uuidString, username: "Batman", profileImageUrl: nil, fullname: "I am Groot", bio: "Gotham's Dark Knight", email: "batman@gmail.com"),
        .init(id: NSUUID().uuidString, username: "Venom", profileImageUrl: nil, fullname: "Eddie Brock", bio: "Venom", email: "venom@gmail.com"),
        .init(id: NSUUID().uuidString, username: "Iron Man", profileImageUrl: nil, fullname: "Tony Stark", bio: "Playboy & Billionaire", email: "batman@gmail.com"),
        .init(id: NSUUID().uuidString, username: "BlackPanther", profileImageUrl: nil, fullname: nil, bio: "Wakanda Forever", email: "blackpanther@gmail.com"),
        .init(id: NSUUID().uuidString, username: "Spiderman", profileImageUrl: nil, fullname: "Peter Parker", bio: "Test Bio", email: "spiderman@gmail.com")


    
    ]
    
}
