//
//  TrainingView.swift
//  FitPlansWatch Watch App
//
//  Created by Zdenko Čepan on 31.08.2023.
//

import SwiftUI

struct TrainingView: View {
    let state: TrainingViewState
    
    var body: some View {
        NavigationStack {
            List(state.trainingPlan, id: \.name) { exercise in
                NavigationLink(destination: ExerciseDescriptionScene()) {
                    ExcerciseRowView(state: ExerciseRowViewState(name: exercise.name, series: exercise.series))
                } // LINK
            } // LIST
            .frame(height: 175)
            .listStyle(.carousel)
            .navigationTitle("Today Training")
            .navigationBarTitleDisplayMode(.inline)
            
            Button("Start") {
                state.isStart = true
            } // BUTTON
            .frame(width: 150)
        } // NAVIGATION
    }
}

struct TrainingView_Previews: PreviewProvider {
    static var previews: some View {
        TrainingView(state: TrainingViewState(isStart: .constant(false), trainingPlan: TrainingPlanExercise.mock))
    }
}
