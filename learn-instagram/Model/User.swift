//
//  User.swift
//  learn-instagram
//
//  Created by Wilbert Devin Wijaya on 29/11/23.
//

import Foundation

struct User: Identifiable, Codable {
    let id: String
    var username: String
    var profileImageUrl: String?
    var fullname: String?
    var bio: String?
    let email: String
    
}

extension User {
    static var MOCK_USERS: [User] = [
        .init(id: NSUUID().uuidString, username: "batman", profileImageUrl: "groot", fullname: "I am Groot", bio: "Gotham's Dark Knight", email: "batman@gmail.com"),
        .init(id: NSUUID().uuidString, username: "venom", profileImageUrl: "venom", fullname: "Eddie Brock", bio: "Venom", email: "venom@gmail.com"),
        .init(id: NSUUID().uuidString, username: "ironman", profileImageUrl: "ironman", fullname: "Tony Stark", bio: "Playboy & Billionaire", email: "batman@gmail.com"),
        .init(id: NSUUID().uuidString, username: "blackpanther", profileImageUrl: "blackpanther", fullname: nil, bio: "Wakanda Forever", email: "blackpanther@gmail.com"),
        .init(id: NSUUID().uuidString, username: "spiderman", profileImageUrl: "spiderman", fullname: "Peter Parker", bio: "Test Bio", email: "spiderman@gmail.com")


    
    ]
    
}
