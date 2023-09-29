//
//  MainScene.swift
//  FitStatistic
//
//  Created by Zdenko Čepan on 25.09.2023.
//

import SwiftUI

struct MainScene: View {
    var body: some View {
        NavigationStack {
            VStack(alignment: .center) {
               BackgroundCardView(imageName: "moon.zzz", text: "Today is Rest", isEmptyTraining: true, isTrainingDay: false)
            }
            .toolbar {
                ToolbarItem(placement: .navigationBarTrailing) {
                    NavigationLink(destination: SettingsScene()) {
                        Label("Settings", systemImage: "gearshape")
                    }
                }
                ToolbarItem {
                    NavigationLink(destination: StatisticsScene()) {
                        Label("History", systemImage: "note.text")
                    }
                }
            }
        } // NAVIGATION
    }
}

#Preview {
    MainScene()
}
