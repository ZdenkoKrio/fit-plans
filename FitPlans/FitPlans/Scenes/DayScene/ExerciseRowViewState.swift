//
//  ExerciseRowViewState.swift
//  FitPlans
//
//  Created by Zdenko Čepan on 19.08.2023.
//

import SwiftUI

struct ExerciseRowViewState: DynamicProperty {
    let name: String
    @State var best: BestOfTheDay
    
    var weight: Int {
        best.weight
    }
    
    var reps: Int {
        best.reps
    }
}
