//
//  DayScene.swift
//  FitPlans
//
//  Created by Zdenko Čepan on 31.07.2023.
//

import SwiftUI

struct DayScene: View {
    let state: DaySceneState
    
    var body: some View {
        NavigationStack {
            Group {
                if !state.isEmptyExcercise {
                    List(state.exercises, id: \.id) { exercise in
                        NavigationLink(destination: ExerciseDetailScene(state: ExerciseDetailSceneState(exercise: exercise))) {
                            ExerciseRowView(state: ExerciseRowViewState(name: exercise.name, best: exercise.best))
                        } // LINK
                    } // LIST
                    .listStyle(.plain)
                } else {
                    ProgressView()
                } // ELSE
            } // GROUP
            .navigationTitle("Day of Training")
            .navigationBarTitleDisplayMode(.automatic)
        } // NAVIGATION
    }
}

struct DayScene_Previews: PreviewProvider {
    static var previews: some View {
        DayScene(state: DaySceneState(day: Training.mock[0]))
    }
}
