//
//  ContentView.swift
//  FitPlansWatch Watch App
//
//  Created by Zdenko Čepan on 29.08.2023.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        DayProgramScene(state: DayProgramSceneState(isTrainingDay: true, trainingData: Training.mock[0].exercises, exercises: TrainingPlanExercise.mock))
        //.padding()
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
