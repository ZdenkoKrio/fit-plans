//
//  DaySceneState.swift
//  FitPlans
//
//  Created by Zdenko Čepan on 19.08.2023.
//

import SwiftUI

struct DaySceneState: DynamicProperty {
    var day: Day
    
    var isEmptyExcercise: Bool {
        day.exercises.isEmpty
    }
    
    var exercises: [Exercise] {
        day.exercises
    }
}
