//
//  TreningScene.swift
//  FitPlans
//
//  Created by Zdenko Čepan on 31.07.2023.
//

import SwiftUI

struct TrainingScene: View {
    let state: TrainingSceneState
    
    var body: some View {
        NavigationStack {
            Group {
                if state.isEmptyWeek {
                    List(state.week, id: \.id) { day in
                        NavigationLink(destination: DayScene(state: DaySceneState(day: day))) {
                            TrainingRowView(state: TrainingRowViewState(day: day))
                        } // LINK
                    } // LIST
                    .listStyle(.plain)
                } else {
                    ProgressView()
                } // ELSE
            } // GROUP
            .navigationTitle(state.name)
            .navigationBarTitleDisplayMode(.automatic)
        } // NAVIGATION
    }
}

struct TrainingScene_Previews: PreviewProvider {
    static var previews: some View {
        TrainingScene(state: TrainingSceneState(training: Training(id: 0, name: "Trainig1", isActive: true, week: Training.mock)))
    }
}
