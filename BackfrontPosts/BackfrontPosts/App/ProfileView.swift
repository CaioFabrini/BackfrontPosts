//
//  ProfileView.swift
//  InstagramClone
//
//  Created by Dheeraj Kumar Sharma on 02/12/20.
//

import SwiftUI

struct ProfileView: View {
    
    @ObservedObject var viewModel: ProfileViewModel = ProfileViewModel()
    
//    init() {
//        UINavigationBar.appearance().barTintColor = .black
//        UINavigationBar.appearance().shadowImage = UIImage()
//    }
    
    @State private var bottomSheetShown = false
    
    // MARK:- BODY
    
    var body: some View {
        ZStack {
            NavigationView {
                ScrollView(.vertical, showsIndicators: false){
                    VStack(alignment: .center, spacing: 0) {
                        UserProfileView()
                        HighlightView(data: viewModel.loadHighlightData())
                        PostGridView(data: viewModel.loadProfilePostData())
                            .padding(.horizontal, 2)
                    }//: VSTACK
                }//: SCROLL
                .navigationBarTitle("", displayMode: .inline)
                .toolbar {
                    ToolbarItem(placement: .navigationBarLeading) {
                        Text("backfrontacademy")
                            .font(Font.system(size: 22, weight: .bold))
                    }//: TOOLBAR ITEM LEFT
                    
                    ToolbarItem(placement: .navigationBarTrailing) {
                        Button(action:{
                            bottomSheetShown.toggle()
                        }){
                            Image(systemName: "line.3.horizontal")
                            .resizable()
                            .foregroundColor(.black)
                            .frame(width: 32, height: 22)
                        }
                    }//: TOOLBAR ITEM RIGHT
                }
            }//: NAVIGATION
            
            if bottomSheetShown {
                Rectangle()
                    .fill(Color.black)
                    .opacity(0.7)
                    .edgesIgnoringSafeArea(.all)
                    .onTapGesture {
                        bottomSheetShown.toggle()
                    }
            }
            
            GeometryReader { geometry in
                BottomSheetView(
                    isOpen: self.$bottomSheetShown,
                    maxHeight: geometry.size.height * 0.7
                ) {
                    SettingsView()
                }
            }.edgesIgnoringSafeArea(.all)
        }
    }
}

// MARK:- PREVIEW

struct ProfileView_Previews: PreviewProvider {
    static var previews: some View {
        ProfileView()
    }
}
