//
//  ExerciseScene.swift
//  FitPlansWatch Watch App
//
//  Created by Zdenko Čepan on 31.08.2023.
//

import SwiftUI

struct ExerciseView: View {
    let state: ExerciseViewState
    
    var body: some View {
        VStack(alignment: .center) {
            Text("\(state.name)")
                .font(.largeTitle)
                .fontWeight(.bold)
            Button("Enter Series \(state.actualSeries)") {
                state.writing.toggle()
            }
        }
        .sheet(isPresented: state.$writing) {
            RepView(state: RepViewState(rep: Series(reps: 0, weight: 0), number: state.actualSeries))
        }
        
    }
}

struct ExerciseView_Previews: PreviewProvider {
    static var previews: some View {
        ExerciseView(state: ExerciseViewState(exercise: Training.mock[0].exercises[0]))
    }
}
