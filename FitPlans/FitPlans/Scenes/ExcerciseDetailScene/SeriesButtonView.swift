//
//  RepButtonView.swift
//  FitPlans
//
//  Created by Zdenko Čepan on 10.08.2023.
//

import SwiftUI

struct SeriesButtonView: View {
    let state: SeriesButtonViewState
    
    var body: some View {
        Button("Series \(state.series + 1)") {
            // this is logic, not view. Should I put it to state?
            state.actualSeries = state.mySeries
            state.seriesNumber = state.series + 1
            state.writing.toggle()
        } // BUTTON
        .font(.title2)
        .fontWeight(.bold)
        .frame(width: 100, height: 30)
        .padding()
        .background(.black)
        .foregroundColor(.white)
        .cornerRadius(30)
        .shadow(radius: 10)
    }
}

struct SeriesButtonView_Previews: PreviewProvider {
    static var previews: some View {
        SeriesButtonView(state: SeriesButtonViewState(series: 0, actualSeries: .constant(Training.mock[0].exercises[0].series?[0] ?? Series(reps: 0, weight: 0)), exercise: .constant(Training.mock[0].exercises[0]), writing: .constant(false), seriesNumber: .constant(1)))
    }
}
