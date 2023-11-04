//
//  MainView.swift
//  BackfrontPosts
//
//  Caio
//

import SwiftUI

struct MainView: View {
    // MARK:- PROPERTIES
    @State private var selection = 0
    
    // MARK:- BODY
    var body: some View {
        TabView(selection: $selection,
                content:  {
            HomeView()
                .tabItem {
                    Image(selection == 0 ? "home-selected" : "home")
                }
                .tag(0)
            NotificationView()
                .tabItem {
                    Image(selection == 1 ? "add" : "add")
                }
                .tag(1)
            
            ProfileView()
                .tabItem {
                    Image(selection == 2 ? "user-selected" : "user")
                }
                .tag(2)
        })
    }
}

#Preview {
    MainView()
}
