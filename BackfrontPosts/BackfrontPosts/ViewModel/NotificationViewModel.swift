//
//  NotificationViewModel.swift
//  BackfrontPosts
//
//  Created by Gabriel Mors  on 24/10/23.
//

import Foundation

class NotificationViewModel: ObservableObject {
    
    @Published private var activityData: [Activity] = []
    
    init() {
        loadInitialData()
    }
    
    public func loadActivityData() -> [Activity] {
        return activityData
    }
    
    private func loadInitialData() {
        
        activityData = [
            
            Activity(activity: .liked,
                     duration: "15m",
                     usersInContext: [User(userName: "gabrielmors_", userImage: "gabriel"), User(userName: "caiofabrini", userImage: "caio")],
                     post: Post(user: User(userName: "  ", userImage: "  "), postImage: "  ", caption: "", likes: " ")),
            Activity(activity: .newFollower,
                     duration: "18h",
                     usersInContext: [User(userName: "gabrielmors_", userImage: "gabriel")],
                     post: Post(user: User(userName: " ", userImage: " "), postImage: " ", caption: " ", likes: " "),
                     comment: ""),
            Activity(activity: .liked,
                     duration: "54m",
                     usersInContext: [User(userName: "gabrielmors_", userImage: "gabriel"), User(userName: "caiofabrini", userImage: "caio")],
                     post: Post(user: User(userName: "  ", userImage: "  "), postImage: "  ", caption: "", likes: " ")),
            Activity(activity: .comment,
                     duration: "5h",
                     usersInContext: [User(userName: "gabrielmors_", userImage: "gabriel")],
                     post: Post(user: User(userName: " ", userImage: " "), postImage: " ", caption: " ", likes: " "),
                     comment: "@backfrontacademy ❤️🙏🏻"),
            Activity(activity: .suggestFollower,
                     duration: "6h",
                     usersInContext: [User(userName: "backfrontacademy", userImage: "h-1")],
                     post: Post(user: User(userName: " ", userImage: " "), postImage: " ", caption: " ", likes: " "),
                     comment: ""),
            Activity(activity: .liked,
                     duration: "12h",
                     usersInContext: [User(userName: "gabrielmors_", userImage: "gabriel"), User(userName: "caiofabrini", userImage: "caio")],
                     post: Post(user: User(userName: "  ", userImage: "  "), postImage: "h-1", caption: "", likes: " ")),
            Activity(activity: .liked,
                     duration: "15m",
                     usersInContext: [User(userName: "gabrielmors_", userImage: "gabriel"), User(userName: "caiofabrini", userImage: "caio")],
                     post: Post(user: User(userName: "  ", userImage: "  "), postImage: "  ", caption: "", likes: " ")),
            Activity(activity: .newFollower,
                     duration: "18h",
                     usersInContext: [User(userName: "gabrielmors_", userImage: " ")],
                     post: Post(user: User(userName: " ", userImage: " "), postImage: " ", caption: " ", likes: " "),
                     comment: ""),
            Activity(activity: .liked,
                     duration: "54m",
                     usersInContext: [User(userName: "gabrielmors_", userImage: "gabriel"), User(userName: "caiofabrini", userImage: "caio")],
                     post: Post(user: User(userName: "  ", userImage: "  "), postImage: "h-1", caption: "", likes: " ")),
            Activity(activity: .comment,
                     duration: "5h",
                     usersInContext: [User(userName: "gabrielmors_", userImage: " ")],
                     post: Post(user: User(userName: " ", userImage: " "), postImage: "h-1", caption: " ", likes: " "),
                     comment: "@backfrontacademy ❤️🙏🏻"),
            Activity(activity: .suggestFollower,
                     duration: "6h",
                     usersInContext: [User(userName: "backfrontacademy", userImage: "gabriel")],
                     post: Post(user: User(userName: " ", userImage: " "), postImage: " ", caption: " ", likes: " "),
                     comment: ""),
            Activity(activity: .liked,
                     duration: "12h",
                     usersInContext: [User(userName: "gabrielmors_", userImage: "gabriel"), User(userName: "caiofabrini", userImage: "caio")],
                     post: Post(user: User(userName: "  ", userImage: "  "), postImage: "  ", caption: "", likes: " ")),
            Activity(activity: .liked,
                     duration: "15m",
                     usersInContext: [User(userName: "gabrielmors_", userImage: "gabriel"), User(userName: "caiofabrini", userImage: "caio")],
                     post: Post(user: User(userName: "  ", userImage: "  "), postImage: "  ", caption: "", likes: " ")),
            Activity(activity: .newFollower,
                     duration: "18h",
                     usersInContext: [User(userName: "gabrielmors_", userImage: "gabriel")],
                     post: Post(user: User(userName: " ", userImage: " "), postImage: " ", caption: " ", likes: " "),
                     comment: ""),
            Activity(activity: .liked,
                     duration: "54m",
                     usersInContext: [User(userName: "gabrielmors_", userImage: "gabriel"), User(userName: "caiofabrini", userImage: "caio")],
                     post: Post(user: User(userName: "  ", userImage: "  "), postImage: "  ", caption: "", likes: " ")),
            Activity(activity: .comment,
                     duration: "5h",
                     usersInContext: [User(userName: "gabrielmors_", userImage: " ")],
                     post: Post(user: User(userName: " ", userImage: " "), postImage: " ", caption: " ", likes: " "),
                     comment: "@backfrontacademy ❤️🙏🏻"),
            Activity(activity: .suggestFollower,
                     duration: "6h",
                     usersInContext: [User(userName: "backfrontacademy", userImage: "h-1")],
                     post: Post(user: User(userName: " ", userImage: " "), postImage: " ", caption: " ", likes: " "),
                     comment: ""),
            Activity(activity: .liked,
                     duration: "12h",
                     usersInContext: [User(userName: "gabrielmors_", userImage: "gabriel"), User(userName: "caiofabrini", userImage: "caio")],
                     post: Post(user: User(userName: "  ", userImage: "  "), postImage: "  ", caption: "", likes: " ")),
            Activity(activity: .liked,
                     duration: "15m",
                     usersInContext: [User(userName: "gabrielmors_", userImage: "gabriel"), User(userName: "caiofabrini", userImage: "caio")],
                     post: Post(user: User(userName: "  ", userImage: "  "), postImage: "  ", caption: "", likes: " ")),
            Activity(activity: .newFollower,
                     duration: "18h",
                     usersInContext: [User(userName: "gabrielmors_", userImage: "gabriel")],
                     post: Post(user: User(userName: " ", userImage: " "), postImage: " ", caption: " ", likes: " "),
                     comment: ""),
            Activity(activity: .liked,
                     duration: "54m",
                     usersInContext: [User(userName: "gabrielmors_", userImage: "gabriel"), User(userName: "caiofabrini", userImage: "caio")],
                     post: Post(user: User(userName: "  ", userImage: "  "), postImage: "  ", caption: "", likes: " ")),
            Activity(activity: .comment,
                     duration: "5h",
                     usersInContext: [User(userName: "gabrielmors_", userImage: " ")],
                     post: Post(user: User(userName: " ", userImage: " "), postImage: " ", caption: " ", likes: " "),
                     comment: "@backfrontacademy ❤️🙏🏻"),
            Activity(activity: .suggestFollower,
                     duration: "6h",
                     usersInContext: [User(userName: "backfrontacademy", userImage: " ")],
                     post: Post(user: User(userName: " ", userImage: " "), postImage: " ", caption: " ", likes: " "),
                     comment: ""),
            Activity(activity: .liked,
                     duration: "12h",
                     usersInContext: [User(userName: "gabrielmors_", userImage: "gabriel"), User(userName: "caiofabrini", userImage: "caio")],
                     post: Post(user: User(userName: "  ", userImage: "  "), postImage: "  ", caption: "", likes: " ")),
        ]
    }

}
