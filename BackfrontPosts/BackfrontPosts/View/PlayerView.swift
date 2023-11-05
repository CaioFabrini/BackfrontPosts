//
//  PlayerView.swift
//  InstagramClone
//
//  Caio
//
import SwiftUI
import AVKit

struct CustomVideoPlayerView: View {
    @State private var player = AVPlayer()
    @Binding var isMuted: Bool
    let videoURL: URL?

    init(isMuted: Binding<Bool>, url: String?) {
        _isMuted = isMuted
        videoURL = Bundle.main.url(forResource: url, withExtension: "mp4")
    }
    
    var body: some View {
        if let url = videoURL {
            ZStack(alignment: .bottomTrailing) {
                VideoPlayer(player: player)
                    .onAppear {
                        player.pause()
                        player = AVPlayer(url: url)
                        player.play()
                        player.isMuted = isMuted
                    }
                    .onDisappear(perform: {
                        player.pause()
                    })
                Color.white.opacity(0)
                Button(action: {
                    isMuted.toggle()
                    player.isMuted = isMuted
                }) {
                    Image(systemName: isMuted ? "speaker.slash.fill" : "speaker.2.fill")
                        .foregroundColor(.white)
                        .padding()
                        .background(Color.black.opacity(0.7))
                        .clipShape(Circle())
                }
                .padding(8)
            }
            .disabled(false)
        } else {
            VStack {
                Image(systemName: "exclamationmark.triangle.fill")
                    .resizable()
                    .foregroundStyle(.yellow)
                    .frame(width: 50, height: 50)
                Text("Ops, tivemos um problema com esse vídeo")
                    .lineLimit(2)
            }
            .padding()
        }
        
    }
}

#Preview {
    @State var isMuted = true
    return CustomVideoPlayerView(isMuted: $isMuted, url: "demo2")
        .padding()
}
