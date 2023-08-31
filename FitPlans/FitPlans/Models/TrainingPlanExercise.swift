//
//  TrainingPlanExercise.swift
//  FitPlans
//
//  Created by Zdenko Čepan on 31.08.2023.
//

struct TrainingPlanExercise {
    let name: String
    let series: Int
}

extension TrainingPlanExercise {
    static let mock: [TrainingPlanExercise] = [
    TrainingPlanExercise(name: "Bench", series: 3),
    TrainingPlanExercise(name: "Kladky", series: 3),
    TrainingPlanExercise(name: "LegPress", series: 3),
    TrainingPlanExercise(name: "Biceps", series: 3),
    TrainingPlanExercise(name: "Biceps", series: 3),
    TrainingPlanExercise(name: "Biceps", series: 3),
    TrainingPlanExercise(name: "Biceps", series: 3)
    ]
}
