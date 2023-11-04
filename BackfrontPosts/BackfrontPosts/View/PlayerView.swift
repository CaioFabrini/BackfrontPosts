//
//  PlayerView.swift
//  InstagramClone
//
//  Caio
//

import SwiftUI

struct PlayerView: UIViewRepresentable {
    
    var url: URL
    @Binding var isMute: Bool
    
    func makeUIView(context: Context) -> VideoPlayer {
        return VideoPlayer()
    }
    
    func updateUIView(_ uiView: UIViewType, context: Context) {
        uiView.manageData(url)
        uiView.toggleSound(isMute)
    }
    
}
