//
//  NewDayView.swift
//  FitPlans
//
//  Created by Zdenko Čepan on 16.08.2023.
//

import SwiftUI

struct NewDayView: View {
    let state: NewDayViewState
    
    var body: some View {
        VStack {
            Text("Day n. \(state.number)")
                .font(.title)
                .fontWeight(.bold)
            Divider()
            TextField("Day name", text: state.$dayName)
            Divider()
            RepRowView(state: RepRowViewState(value: state.$exercisesNumber, name: "Exercises"))
            Divider()
            ScrollView(.horizontal) {
                HStack {
                    ForEach(1...state.exercisesNumber, id: \.self) {num in
                        NewExerciseView(state: NewExerciseViewState(exercises: state.$exercises, number: num))
                    } // FOREACH
                } // HSTACK
            } // SCROLL
        } // VSTACK
        .frame(width: UIScreen.main.bounds.width)
        .padding()
    }
}

struct NewDayView_Previews: PreviewProvider {
    static var previews: some View {
        NewDayView(state: NewDayViewState(days: .constant([]), number: 1))
    }
}
