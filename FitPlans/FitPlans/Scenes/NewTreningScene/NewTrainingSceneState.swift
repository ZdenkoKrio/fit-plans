//
//  NewTrainingSceneState.swift
//  FitPlans
//
//  Created by Zdenko Čepan on 19.08.2023.
//

import SwiftUI

struct NewTrainingSceneState: DynamicProperty {
    @State var trainingName: String = ""
    @State var daysNumber: Int = 1
    @State var days: [Day] = []
}
