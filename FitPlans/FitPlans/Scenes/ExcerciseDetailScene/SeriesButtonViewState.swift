//
//  SeriesButtonViewState.swift
//  FitPlans
//
//  Created by Zdenko Čepan on 19.08.2023.
//

import SwiftUI

struct SeriesButtonViewState: DynamicProperty {
    let series: Int
    @Binding var actualSeries: Series
    @Binding var exercise: Exercise
    @Binding var writing: Bool
    @Binding var seriesNumber: Int
    
    var mySeries: Series {
        exercise.series?[series] ?? Series(reps: 0, weight: 0)
    }
}
