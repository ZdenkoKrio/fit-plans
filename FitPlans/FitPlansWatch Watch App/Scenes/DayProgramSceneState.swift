//
//  DayProgramSceneState.swift
//  FitPlansWatch Watch App
//
//  Created by Zdenko Čepan on 31.08.2023.
//

import SwiftUI

struct DayProgramSceneState: DynamicProperty {
    @State var isStart: Bool = false
    
    let isTrainingDay: Bool
    
    let trainingData: [Exercise]
    let exercises: [TrainingPlanExercise]
}

