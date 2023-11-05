//
//  PostView.swift
//  InstagramClone
//
//  Caio
//

import SwiftUI

struct PostView: View {
    // MARK:- PROPERTIES
    @State var postData: PostDataModel
    
    @State private var isLiked: Bool = false
    @State private var isSaved: Bool = false
    @State private var isLikeAnimation: Bool = false
    @State private var isMute: Bool = true
    
    // MARK:- FUNCTION
    
    func hideAnimation(){
        DispatchQueue.main.asyncAfter(deadline: .now() + .milliseconds(800)) {
            isLikeAnimation = false
        }
    }
    
    // MARK:- BODY
    
    var body: some View {
        VStack {
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
                }//: HSTACK
                .padding(.vertical, 10)
                .padding(.horizontal, 12)
                
                if !postData.isVideo {
                    ZStack(alignment: .center) {
                        Image(postData.postImage)
                            .resizable()
                            .scaledToFit()
                            .onTapGesture(count: 2) {
                                postData.isLiked = true
                                isLikeAnimation = true
                                hideAnimation()
                            }
                        
                        Image("white-heart")
                            .resizable()
                            .scaledToFill()
                            .frame(width: 170, height: 170)
                            .scaleEffect(isLikeAnimation ? 1 : 0)
                            .opacity(isLikeAnimation ? 1 : 0)
                            .animation(.spring())
                        
                    }
                } else {
                    ZStack(alignment: .center) {
                        if Bundle.main.url(forResource: postData.videoUrl, withExtension: "mp4") != nil {
                            PlayerView(url: Bundle.main.url(forResource: postData.videoUrl, withExtension: "mp4")!, isMute: $isMute)
                                .frame(minHeight: 350)
                                .onTapGesture(count: 2) {
                                    postData.isLiked = true
                                    isLikeAnimation = true
                                    hideAnimation()
                                }
                        }
                        
                        Image("white-heart")
                            .resizable()
                            .scaledToFill()
                            .frame(width: 170, height: 170)
                            .scaleEffect(isLikeAnimation ? 1 : 0)
                            .opacity(isLikeAnimation ? 1 : 0)
                            .animation(.spring())
                    }//: ZSTACK
                    .overlay(
                        Button(action:{
                            isMute.toggle()
                        }) {
                            ZStack{
                                Circle()
                                    .fill(Color(red:0, green:0, blue:0))
                                    .frame(width:30, height:30)
                                    .opacity(0.8)
                                
                                Image(isMute ? "mute" : "sound")
                                    .resizable()
                                    .renderingMode(.template)
                                    .foregroundColor(.white)
                                    .scaledToFill()
                                    .frame(width: 17, height: 17)
                                    .clipShape(Circle())
                            }
                        }
                            .padding(13)
                        ,alignment: .bottomTrailing
                    )
                }
                HStack(alignment: .center, spacing: 10){
                    Button(action:{
                        postData.isLiked = !postData.isLiked
                    }){
                        Image(postData.isLiked ? "like-selected" : "like")
                            .resizable()
                            .scaledToFill()
                            .frame(width: 30, height: 30, alignment: .center)
                    }
                    
                    Button(action:{
                        
                    }){
                        Image("comment")
                            .resizable()
                            .scaledToFill()
                            .frame(width: 30, height: 30, alignment: .center)
                    }
                    
                    Button(action:{
                        
                    }){
                        Image("share")
                            .resizable()
                            .scaledToFill()
                            .frame(width: 30, height: 30, alignment: .center)
                    }
                    
                    Spacer()
                    
                    Button(action:{
                        postData.isSaved = !postData.isSaved
                    }){
                        Image(postData.isSaved ? "save-selected" : "save")
                            .resizable()
                            .scaledToFill()
                            .frame(width: 30, height: 30, alignment: .center)
                    }
                }//: HSTACK
                .padding(.vertical, 8)
                .padding(.horizontal, 15)
                if postData.caption != nil {
                    Group {
                        Text(postData.userName)
                            .font(Font.system(size: 14, weight: .semibold))
                        + Text(" ")
                        + Text(postData.caption)
                            .font(Font.system(size: 14))
                    }
                    .padding(.horizontal, 15)
                    .padding(.vertical, 6)
                }
            }
            .background(Color.white)
            .clipShape(RoundedRectangle(cornerRadius: 8))
        }
    }

// MARK:- PREVIEW

#Preview {
    PostView(postData: PostData[0])
}
