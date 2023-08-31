//
//  FitPlansApp.swift
//  FitPlans
//
//  Created by Zdenko Čepan on 30.07.2023.
//

import SwiftUI

@main
struct FitPlansApp: App {
    //let persistenceController = PersistenceController.shared
    
    var body: some Scene {
        WindowGroup {
            ContentView()
                //.environment(\.managedObjectContext, persistenceController.container.viewContext)
        }
    }
}
