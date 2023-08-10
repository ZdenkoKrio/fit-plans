//
//  DayScene.swift
//  FitPlans
//
//  Created by Zdenko Čepan on 31.07.2023.
//

import SwiftUI

struct DayScene: View {
    var day: Day
    
    var body: some View {
        NavigationStack {
            Group {
                if !day.exercises.isEmpty {
                    List(day.exercises, id: \.id) { exercise in
                        NavigationLink(destination: ExerciseDetailScene(exercise: exercise)) {
                            ExerciseRowView(name: exercise.name, best: exercise.best)
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
        DayScene(day: Training.mock[0])
    }
}
