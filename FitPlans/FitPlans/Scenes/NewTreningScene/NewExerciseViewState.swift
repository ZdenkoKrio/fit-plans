//
//  NewExerciseViewState.swift
//  FitPlans
//
//  Created by Zdenko Čepan on 19.08.2023.
//

import SwiftUI

struct NewExerciseViewState: DynamicProperty {
    @Binding var exercises: [Exercise]
    @State var exerciseName: String = ""
    @State var seriesNumber: Int = 1
    @State var series: [Series] = []
    let number: Int
}
