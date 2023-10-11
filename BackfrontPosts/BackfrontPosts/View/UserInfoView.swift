//
//  UserInfoView.swift
//  InstagramClone
//
//  Created by Dheeraj Kumar Sharma on 09/12/20.
//

import SwiftUI

struct UserInfoView: View {
    var body: some View {
        HStack(alignment: .center){
            ZStack{
                Image("logo-BF")
                    .resizable()
                    .scaledToFill()
                    .frame(width: 90, height: 90)
                    .clipShape(Circle())
                ZStack{
                    Circle()
                        .fill(Color.blue)
                        .frame(width: 25, height: 25)
                    
                    Image(systemName: "plus")
                        .font(Font.system(size: 16, weight: .bold))
                        .foregroundColor(.white)
                    
                    Circle().stroke(Color.white, lineWidth: 2)
                        .frame(width: 25, height: 25)
                }
                .offset(x: 35, y: 30)
            }//: ZSTACK
            
            Spacer()
            
            HStack(alignment: .center, spacing:30){
                VStack(alignment: .center, spacing: 0){
                    Text("235")
                        .font(Font.system(size: 17, weight: .medium))
                    Text("Posts")
                        .font(.footnote)
                }//: VSTACK
                
                VStack(alignment: .center, spacing: 0){
                    Text("2,748")
                        .font(Font.system(size: 17, weight: .medium))
                    Text("Followers")
                        .font(.footnote)
                }//: VSTACK
                
                VStack(alignment: .center, spacing: 0){
                    Text("3,348")
                        .font(Font.system(size: 17, weight: .medium))
                    Text("Following")
                        .font(.footnote)
                }//: VSTACK
            }//: HSTACK
            Spacer()
                .frame(width: 20)
        }//: HSTACK
    }
}

struct UserInfoView_Previews: PreviewProvider {
    static var previews: some View {
        UserInfoView()
    }
}
