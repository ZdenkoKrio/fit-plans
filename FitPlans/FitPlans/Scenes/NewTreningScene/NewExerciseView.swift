//
//  NewExerciseView.swift
//  FitPlans
//
//  Created by Zdenko Čepan on 16.08.2023.
//

import SwiftUI

struct NewExerciseView: View {
    let state: NewExerciseViewState
    
    var body: some View {
        VStack {
            Text("Exercise n. \(state.number)")
                .font(.largeTitle)
                .fontWeight(.heavy)
            Divider()
            TextField("Your training name", text: state.$exerciseName)
            Divider()
            RepRowView(state: RepRowViewState(value: state.$seriesNumber, name: "Series"))
            Divider()
            ScrollView(.horizontal) {
                Grid {
                    GridRow {
                        ForEach(1...state.seriesNumber, id: \.self) {num in
                            Text("Plain test text.")
                        } // FOREACH
                    } // ROW
                } // GRID
            } // SCROLL
        } // VSTACK
        .frame(width: UIScreen.main.bounds.width)
        .padding()
    }
}

struct NewExerciseView_Previews: PreviewProvider {
    static var previews: some View {
        NewExerciseView(state: NewExerciseViewState(exercises: .constant(Training.mock[0].exercises), number: 1))
    }
}
