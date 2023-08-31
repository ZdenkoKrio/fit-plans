//
//  DayProgramScene.swift
//  FitPlansWatch Watch App
//
//  Created by Zdenko Čepan on 31.08.2023.
//

import SwiftUI

struct DayProgramScene: View {
    let state: DayProgramSceneState
    
    var body: some View {
        if state.isTrainingDay {
            TrainingView(state: TrainingViewState(isStart: state.$isStart, trainingPlan: state.exercises))
        } else if state.isStart {
            StartScene(state: StartSceneState(exercises: state.trainingData))
        } else {
            Text("Today you have Rest!")
        }
    }
}

struct DayProgramScene_Previews: PreviewProvider {
    static var previews: some View {
        DayProgramScene(state: DayProgramSceneState(isTrainingDay: true, trainingData: Training.mock[0].exercises, exercises: TrainingPlanExercise.mock))
    }
}
