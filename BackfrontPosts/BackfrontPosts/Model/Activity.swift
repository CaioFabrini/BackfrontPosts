//
//  Activity.swift
//  BackfrontPosts
//
//  Created by Gabriel Mors  on 15/10/23.
//

import Foundation

enum ActivityType {
    case liked
    case newFollower
    case suggestFollower
    case comment
}

struct Activity: Identifiable {
    let id = UUID()
    let activity: ActivityType
    let duration: String 
    let usersInContext: [User]
    let post: Post
    var comment: String = ""

    func getUsernames() -> String {
        return usersInContext.map{$0.userName}.joined(separator: ", ")
    }
}
