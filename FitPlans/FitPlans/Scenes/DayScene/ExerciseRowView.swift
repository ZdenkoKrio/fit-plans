//
//  ExcerciseRowView.swift
//  FitPlans
//
//  Created by Zdenko Čepan on 03.08.2023.
//

import SwiftUI

struct ExerciseRowView: View {
    let state: ExerciseRowViewState
    
    var body: some View {
        HStack {
            Text(state.name)
                .font(.title)
                .fontWeight(.heavy)
            Spacer()
            Text("\(state.weight)kg")
                .font(.title2)
                .fontWeight(.bold)
                .padding()
            Text("\(state.reps) reps")
                .font(.title2)
                .fontWeight(.bold)
                .padding()
        } // HSTACK
        .padding()
    }
}

struct ExerciseRowView_Previews: PreviewProvider {
    static var previews: some View {
        ExerciseRowView(state: ExerciseRowViewState(name: "Bench", best: BestOfTheDay(reps: 10, weight: 100)))
    }
}
