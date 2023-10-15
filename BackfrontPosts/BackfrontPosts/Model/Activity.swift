//
//  Activity.swift
//  BackfrontPosts
//
//  Created by Gabriel Mors  on 15/10/23.
//

import Foundation

enum ActivityType {
    case liked
    case comment
    case suggestFollower
    case newFollower
}

struct Activity: Identifiable {
    let id = UUID()
    let usersInContext: [User]
    let duration: String
    let activity: ActivityType
    var comment: String = ""
    
    func getUsernames() -> String {
        return usersInContext.map{$0.userName}.joined(separator: ", ")
    }
}
