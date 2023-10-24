//
//  AddMedia.swift
//  InstagramClone
//
//  Created by Dheeraj Kumar Sharma on 02/12/20.
//

import SwiftUI

struct NotificationView: View {
    
    @ObservedObject var viewModel: NotificationViewModel = NotificationViewModel()
    
    var body: some View {
        NavigationView {
            ScrollView(.vertical, showsIndicators: false) {
                ForEach(viewModel.loadActivityData()) {
                    ActivityView(activity: $0)
                }
            }
            .navigationBarTitle("", displayMode: .inline)
                .toolbar(content: {
                    Text("Notifications")
                        .font(Font.system(size: 20, weight: .bold))
                        .padding()
                        .frame(width: UIScreen.main.bounds.size.width, alignment: .leading)
                })
        }
    }
}

struct AddMediaView_Previews: PreviewProvider {
    static var previews: some View {
        NotificationView()
    }
}

