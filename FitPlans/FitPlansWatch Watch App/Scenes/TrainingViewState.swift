//
//  TrainingViewState.swift
//  FitPlansWatch Watch App
//
//  Created by Zdenko Čepan on 31.08.2023.
//

import SwiftUI

struct TrainingViewState {
    @Binding var isStart: Bool
    let trainingPlan: [TrainingPlanExercise]
}
