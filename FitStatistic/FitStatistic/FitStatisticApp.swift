//
//  FitStatisticApp.swift
//  FitStatistic
//
//  Created by Zdenko Čepan on 23.09.2023.
//

import SwiftUI
import SwiftData

@main
struct FitStatisticApp: App {
    var sharedModelContainer: ModelContainer = {
        let schema = Schema([
            Item.self,
            Day.self,
            Exercise.self,
        ])
        let modelConfiguration = ModelConfiguration(schema: schema, isStoredInMemoryOnly: false)

        do {
            return try ModelContainer(for: schema, configurations: [modelConfiguration])
        } catch {
            fatalError("Could not create ModelContainer: \(error)")
        }
    }()

    var body: some Scene {
        WindowGroup {
            MainScene()
        }
        .modelContainer(sharedModelContainer)
    }
}
