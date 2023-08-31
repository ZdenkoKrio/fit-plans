//
//  ExerciseViewState.swift
//  FitPlansWatch Watch App
//
//  Created by Zdenko Čepan on 31.08.2023.
//

import SwiftUI

struct ExerciseViewState: DynamicProperty {
    @State var actualSeries: Int = 1
    @State var writing: Bool = false
    
    @State var exercise: Exercise
    
    var name: String {
        exercise.name
    }
}
