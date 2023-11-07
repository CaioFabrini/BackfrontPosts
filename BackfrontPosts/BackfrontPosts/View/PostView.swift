//
//  PostView.swift
//  InstagramClone
//
//  Caio
//

import SwiftUI

struct PostView: View {
    // MARK:- PROPERTIES
    @Binding var postData: PostDataModel
    @Binding var isMuted: Bool
    @State private var isLikeAnimation: Bool = false
    
    // MARK:- FUNCTION
    
    private func hideAnimation() {
        DispatchQueue.main.asyncAfter(deadline: .now() + 0.8) {
            withAnimation {
                isLikeAnimation = false
            }
        }
    }
    
    // MARK:- BODY
    
    var body: some View {
        VStack(alignment: .leading) {
            HStack(alignment: .center, spacing: 10) {
                Image(postData.profileImage)
                    .resizable()
                    .scaledToFill()
                    .frame(width: 33, height: 33, alignment: .center)
                    .clipShape(Circle())
                    .overlay(
                        Circle().stroke(Color.gray, lineWidth: 0.5)
                    )
                Text(postData.userName)
                    .font(Font.system(size: 14, weight: .semibold))
                
                Spacer()
                Button(action:{
                    print("options")
                }){
                    Image("more")
                        .resizable()
                        .scaledToFill()
                        .frame(width: 30, height: 30, alignment: .center)
                }
            }
            .padding(.vertical, 10)
            .padding(.horizontal, 12)
            
            ZStack {
                if !postData.isVideo {
                    Image(postData.postImage ?? "error")
                        .resizable()
                        .scaledToFit()
                        .onTapGesture(count: 2) {
                            tappedLike()
                        }
                } else {
                    CustomVideoPlayerView(isMuted: $isMuted, url: postData.videoUrl)
                        .disabled(false)
                        .frame(minHeight: 350)
                        .onTapGesture(count: 2) {
                            tappedLike()
                        }
                }
                Image("white-heart")
                    .resizable()
                    .scaledToFill()
                    .frame(width: 170, height: 170)
                    .scaleEffect(isLikeAnimation ? 1 : 0)
                    .opacity(isLikeAnimation ? 1 : 0)
                    .animation(.spring, value: isLikeAnimation)
            }
            HStack(alignment: .center, spacing: 10){
                Button(action:{
                    postData.isLiked.toggle()
                }){
                    Image(postData.isLiked ? "like-selected" : "like")
                        .resizable()
                        .scaledToFill()
                        .frame(width: 30, height: 30, alignment: .center)
                }
                
                Button(action:{
                    print("comment button")
                }){
                    Image("comment")
                        .resizable()
                        .scaledToFill()
                        .frame(width: 30, height: 30, alignment: .center)
                }
                
                Button(action:{
                    print("share button")
                }){
                    Image("share")
                        .resizable()
                        .scaledToFill()
                        .frame(width: 30, height: 30, alignment: .center)
                }
                
                Spacer()
                
                Button(action:{
                    postData.isSaved.toggle()
                }){
                    Image(postData.isSaved ? "save-selected" : "save")
                        .resizable()
                        .scaledToFill()
                        .frame(width: 30, height: 30, alignment: .center)
                }
            }
            .padding(.top, 8)
            .padding(.horizontal, 15)
            if !postData.caption.isEmpty {
                Group {
                    Text(postData.userName)
                        .font(Font.system(size: 14, weight: .semibold))
                    + Text(" ")
                    + Text(postData.caption)
                        .font(Font.system(size: 14))
                }
                .multilineTextAlignment(.leading)
                .padding(.horizontal, 15)
                .padding(.top, 4)
                .padding(.bottom, 10)
            }
        }
        .background(Color.white)
        .clipShape(RoundedRectangle(cornerRadius: 8))
    }
    
    func tappedLike() {
        postData.isLiked = true
        isLikeAnimation = true
        hideAnimation()
    }
    
}

// MARK:- PREVIEW

#Preview {
    @State var isMuted = true
    @State var post = PostData[2]
    return PostView(postData: $post, isMuted: $isMuted)
}
