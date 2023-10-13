//
//  ProfileViewModel.swift
//  BackfrontPosts
//
//  Created by Gabriel Mors  on 13/10/23.
//

import Foundation

class ProfileViewModel: ObservableObject {
    
    @Published var userProfile: UserProfileView?
    
    @Published var highlightData: [HighlightDataModel] = [
        HighlightDataModel(name: "Design to code", cover: "h-1"),
        HighlightDataModel(name: "Coolors", cover: "h-2"),
        HighlightDataModel(name: "Design tips", cover: "h-3"),
        HighlightDataModel(name: "Proj Dovve", cover: "h-4"),
        HighlightDataModel(name: "Instaclone", cover: "h-5"),
        HighlightDataModel(name: "Animations", cover: "h-6"),
        HighlightDataModel(name: "Unboxing", cover: "h-7")
    ]
    
    @Published var profilePostData: [ProfilePostModel] = [
        ProfilePostModel(image: "thumb1", type: "multiple"),
        ProfilePostModel(image: "thumb2", type: "video"),
        ProfilePostModel(image: "thumb3", type: "multiple"),
        ProfilePostModel(image: "thumb4", type: "video"),
        ProfilePostModel(image: "thumb5", type: "multiple"),
        ProfilePostModel(image: "thumb6", type: "video"),
        ProfilePostModel(image: "thumb7", type: "multiple"),
        ProfilePostModel(image: "thumb8", type: "video"),
        ProfilePostModel(image: "thumb9", type: "multiple")
    ]
    
    func loadUserProfile() {
        
    }

    func loadHighlightData(data: [HighlightDataModel]) {
        
    }

    func loadProfilePostData() {
        
    }
}
