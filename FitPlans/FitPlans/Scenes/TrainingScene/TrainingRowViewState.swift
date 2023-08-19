//
//  TrainingRowViewState.swift
//  FitPlans
//
//  Created by Zdenko Čepan on 19.08.2023.
//

import SwiftUI

struct TrainingRowViewState: DynamicProperty {
    let day: Day
    
    var name: String {
        day.name
    }
}
