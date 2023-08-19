//
//  NewDayViewState.swift
//  FitPlans
//
//  Created by Zdenko Čepan on 19.08.2023.
//

import SwiftUI

struct NewDayViewState: DynamicProperty {
    @Binding var days: [Day]
    @State var dayName: String = ""
    @State var exercisesNumber: Int = 1
    @State var exercises: [Exercise] = []
    let number: Int
}
