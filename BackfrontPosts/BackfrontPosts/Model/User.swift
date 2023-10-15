//
//  User.swift
//  BackfrontPosts
//
//  Created by Gabriel Mors  on 15/10/23.
//

import Foundation

struct User: Identifiable {
    var id = UUID()
    let userImage: String
    let userName: String
}
