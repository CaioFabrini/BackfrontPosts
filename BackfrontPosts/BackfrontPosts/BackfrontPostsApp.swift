//
//  BackfrontPostsApp.swift
//  BackfrontPosts
//
//  Created by Caio Fabrini on 09/10/23.
//

import SwiftUI
import SwiftData

@main
struct BackfrontPostsApp: App {
//    var sharedModelContainer: ModelContainer = {
//        let schema = Schema([
//            Item.self,
//        ])
//        let modelConfiguration = ModelConfiguration(schema: schema, isStoredInMemoryOnly: false)
//
//        do {
//            return try ModelContainer(for: schema, configurations: [modelConfiguration])
//        } catch {
//            fatalError("Could not create ModelContainer: \(error)")
//        }
//    }()

    var body: some Scene {
        WindowGroup {
            MainView()
        }
//        .modelContainer(sharedModelContainer)
    }
}
