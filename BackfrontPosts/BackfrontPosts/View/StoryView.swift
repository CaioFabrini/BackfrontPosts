//
//  StoryView.swift
//  InstagramClone
//
//  Caio
//

import SwiftUI

struct StoryView: View {
    // MARK:- PROPERTIES
    @State var storyData: StoryDataModel
    
    private let gradient = LinearGradient( gradient: Gradient(colors: [Color.yellow, Color(red: 252/255, green: 175/255, blue: 69/255) , Color.red, Color(red: 225/255, green: 48/255, blue: 108/255), Color(red: 193/255, green: 53/255, blue: 132/255) , Color(red: 131/255, green: 58/255, blue: 180/255)]), startPoint: .bottomLeading, endPoint: .topTrailing)
    
    // MARK:- BODY
    
    var body: some View {
        VStack(spacing: 5.0) {
                VStack(spacing: 8) {
                    ZStack {
                        Circle().stroke(gradient , style: StrokeStyle(lineWidth: 2.5, lineCap: .round))
                            .frame(width: 72, height: 72, alignment: .center)
                        Image(storyData.image)
                            .resizable()
                            .scaledToFit()
                            .frame(width: 62, height: 62)
                            .clipShape(Circle())
                        if storyData.myStory {
                            Image(systemName: "plus.circle.fill")
                                .resizable()
                                .frame(width: 24, height: 24)
                                .background(Color.white.clipShape(Circle()))
                                .offset(x: 28, y: 20)
                                .foregroundStyle(.blue)
                        }
                    }
                    Text(storyData.name)
                        .lineLimit(1)
                        .font(Font.system(size: 12, weight: .regular))
                        .frame(width: 81)
                        .foregroundStyle(.primary)
            }
        }
        .padding(.horizontal, 15)
        .padding(.top, 10)
        .background(Color.white)
    }
}

// MARK:- PREVIEWS

struct StoryView_Previews: PreviewProvider {
    static var previews: some View {
        StoryView(storyData: StoryData[0])
    }
}
