//
//  TrainingSceneState.swift
//  FitPlans
//
//  Created by Zdenko Čepan on 19.08.2023.
//

import SwiftUI

struct TrainingSceneState: DynamicProperty {
    var training: Training
    
    var isEmptyWeek: Bool {
        !training.week.isEmpty
    }
    
    var week: [Day] {
        training.week
    }
    
    var name: String {
        training.name
    }
}
