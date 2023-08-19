//
//  RepViewState.swift
//  FitPlans
//
//  Created by Zdenko Čepan on 19.08.2023.
//

import SwiftUI


struct RepViewState: DynamicProperty {
    var rep: Series
    let number: Int
    @State var weight: Int = 0
    @State var reps: Int = 0
}
