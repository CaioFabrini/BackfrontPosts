//
//  ActivityView.swift
//  BackfrontPosts
//
//  Created by Gabriel Mors  on 15/10/23.
//

import SwiftUI

struct ActivityView: View {
    
    let activity: Activity
    
    var body: some View {
        HStack {
            Image(activity.usersInContext.first!.userImage)
                .resizable()
                .cornerRadius(20)
                .frame(width: 40, height: 40, alignment: .center)
                .clipped()

            if activity.activity == .liked {
                Text(activity.getUsernames())
                    .font(Font.system(size: 12, weight: .semibold)) +
                    Text(activity.usersInContext.count == 1 ? " Curtiu sua publicação. " : " e outras pessoas gostaram da sua postagem. ")
                    .font(Font.system(size: 12, weight: .medium)) +
                    Text(activity.duration)
                    .font(Font.system(size: 10, weight: .light))
            } else if activity.activity == .comment {
                Text(activity.getUsernames())
                    .font(Font.system(size: 12, weight: .semibold)) +
                    Text(" Mencionou você em um comentário: ")
                    .font(Font.system(size: 12, weight: .medium)) +
                    Text((activity.comment))
                    .font(Font.system(size: 12, weight: .semibold)) +
                    Text(" " + activity.duration)
                    .font(Font.system(size: 10, weight: .light))
            }
            else if activity.activity == .suggestFollower {
                Text(activity.getUsernames())
                    .font(Font.system(size: 12, weight: .semibold)) +
                    Text(" Quem você talvez conheça, está no Instagram. ")
                    .font(Font.system(size: 12, weight: .medium)) +
                    Text(activity.duration)
                    .font(Font.system(size: 10, weight: .light))
            }
            else if activity.activity == .newFollower {
                Text(activity.getUsernames())
                    .font(Font.system(size: 12, weight: .semibold)) +
                    Text(" Começou a seguir você. ")
                    .font(Font.system(size: 12, weight: .medium)) +
                    Text(activity.duration)
                    .font(Font.system(size: 10, weight: .light))
            }
            
            Spacer()
            
            if activity.activity == .suggestFollower {
                
                Button(action: {
                    
                }) {
                    HStack {
                        Spacer()
                        Text("Seguir")
                            .font(Font.system(size: 14, weight: .semibold))
                            .foregroundColor(.white)
                            .clipped()
                        Spacer()
                    }
                }
                .padding()
                .background(Color.blue)
                .frame(width: 100, height: 30, alignment: .center)
                .clipped()
                .cornerRadius(6)
            } else if activity.activity == .newFollower {
                Button("Seguindo") {
                    print("Botão Seguir clicado.")
                }
                .font(Font.system(size: 14, weight: .semibold))
                .padding()
                .foregroundColor(.primary)
                .cornerRadius(6)
                .overlay(RoundedRectangle(cornerRadius: 6)
                            .stroke(Color.primary, lineWidth: 0.2).frame(height: 28, alignment: .center))
                .frame(width: 100, height: 30, alignment: .center)
            } else {
                Image(activity.post.postImage)
                    .resizable()
                    .frame(width: 40, height: 40, alignment: .center)
                    .clipped()
            }
        }
        .padding(.horizontal, 15)
        .padding(.vertical, 5)
        .frame(width: UIScreen.main.bounds.width, alignment: .leading)
    }
}

struct LikedActivityView_Previews: PreviewProvider {
    static var previews: some View {
        ActivityView(activity: Activity(activity: .liked,
                                             duration: "5h",
                                             usersInContext: [User(userName: "gabrielmors_", userImage: "gabriel")],
                                             post: Post(user: User(userName: "gabrielmors", userImage: "gabriel") , postImage: "gabrielmors", caption: "", likes: " ")))
    }
}

struct LikedActivityView_Previews_Comment: PreviewProvider {
    static var previews: some View {
        ActivityView(activity: Activity(activity: .comment,
                                             duration: "5h",
                                             usersInContext: [User(userName: "gabrielmors", userImage: "gabriel")],
                                             post: Post(user: User(userName: "gabriel", userImage: "gabriel"), postImage: "post_18", caption: "If any one attempts to haul down the American flag, shoot him on the spot.", likes: "leomessi and others liked"),
                                             comment: "@backfrontacademy ❤️🙏🏻"))
    }
}


struct LikedActivityView_Previews_SuggestedFollower: PreviewProvider {
    static var previews: some View {
        ActivityView(activity: Activity(activity: .suggestFollower,
                                             duration: "6h",
                                             usersInContext: [User(userName: "gabrielmors", userImage: "gabriel")],
                                             post: Post(user: User(userName: "gabriel", userImage: "gabriel"), postImage: "gabriel", caption: " ", likes: " "),
                                             comment: ""))
    }
}

struct LikedActivityView_Previews_NewFollower: PreviewProvider {
    static var previews: some View {
        ActivityView(activity: Activity(activity: .newFollower,
                                             duration: "18h",
                                             usersInContext: [User(userName: "gabriel", userImage: "gabriel")],
                                             post: Post(user: User(userName: "gabrielmors", userImage: "gabriel"), postImage: "gabriel", caption: " ", likes: ""),
                                             comment: ""))
    }
}
