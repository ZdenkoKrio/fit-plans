//
//  MainScene.swift
//  FitStatistic
//
//  Created by Zdenko Čepan on 25.09.2023.
//

import SwiftUI

struct MainScene: View {
    var body: some View {
        NavigationSplitView {
            VStack(alignment: .center) {
               BackgroundCardView(imageName: "moon.zzz", text: "Today is Rest", isEmptyTraining: true, isTrainingDay: false)
            }
            .toolbar {
                ToolbarItem(placement: .navigationBarTrailing) {
                    Button(action: {}) {
                        Label("Settings", systemImage: "gearshape")
                    }
                }
                ToolbarItem {
                    Button(action: {}) {
                        Label("History", systemImage: "note.text")
                    }
                }
            }
        } // NAVIGATION
        detail: {
            Text("Select an item")
        }
    }
}

#Preview {
    MainScene()
}
