//
//  HomeView.swift
//  InstagramClone
//
//  Caio
//

import SwiftUI

struct HomeView: View {
    
    // MARK:- BODY
    
    var body: some View {
        NavigationStack {
            ZStack {
                Color(red: 237/255, green: 237/255, blue: 237/255)
                HStack(spacing: 20.0) {
                    ScrollView(.vertical, showsIndicators: false) {
                        LazyVStack {
                            ForEach(StoryData) { item in
                              StoryView(storyData: item)
                            }
                        }
                    }
                    .background(Color.white)
                    .frame(width: 90)
                    .clipShape(RoundedRectangle(cornerRadius: 8))
                    
                    ScrollView(.vertical, showsIndicators: false) {
                        LazyVStack(spacing: 20) {
                            ForEach(PostData) { item in
                              PostView(postData: item)
                            }
                        }
                    }

                }
                .padding([.top, .leading, .trailing])
                .padding(.bottom, 5)
            }
            .toolbarTitleDisplayMode(.inline)
            .toolbar {
                ToolbarItem(placement: .topBarLeading) {
                    Image("logo")
                        .renderingMode(.template)
                        .resizable()
                        .scaledToFit()
                        .frame(height:65)
                }
                
                ToolbarItem(placement: .topBarTrailing) {
                    HStack(alignment:.center, spacing: 25) {
                        Button(action:{
                            print("Go to Search")
                        }){
                            Image("search")
                                .resizable()
                                .scaledToFill()
                                .frame(width: 25, height: 25)
                        }
                        
                        Button(action: {
                            print("Go to messages")
                        }){
                            ZStack{
                                Image("message")
                                    .resizable()
                                    .scaledToFit()
                                    .frame(width: 25, height: 25)
                                
                                Text("3")
                                    .font(Font.system(size: 13, weight: .bold))
                                    .frame(width: 18, height: 18)
                                    .background(Color.red)
                                    .foregroundStyle(.white)
                                    .clipShape(Circle())
                                    .offset(
                                        x: 9,
                                        y: -9
                                    )
                            }
                        }
                    }
                }
            }
        }
    }
}

// MARK:- PREVIEW

struct HomeView_Previews: PreviewProvider {
    static var previews: some View {
        HomeView()
    }
}
