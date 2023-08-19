//
//  ExerciseDetailScene.swift
//  FitPlans
//
//  Created by Zdenko Čepan on 19.08.2023.
//

import SwiftUI

struct ExerciseDetailSceneState: DynamicProperty {
    @State var exercise: Exercise
    @State var actualSeries: Series = Series(reps: 0, weight: 0)
    @State var writing: Bool = false
    @State var series: Int = 0
    
    var seriesCount: Int {
        exercise.series.count - 1
    }
    
    var name: String {
        exercise.name
    }
}
