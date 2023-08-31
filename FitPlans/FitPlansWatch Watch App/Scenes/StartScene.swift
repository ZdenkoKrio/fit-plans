//
//  SwiftUIView.swift
//  FitPlansWatch Watch App
//
//  Created by Zdenko Čepan on 31.08.2023.
//

import SwiftUI

struct StartScene: View {
    var state: StartSceneState
    
    var body: some View {
        TabView {
            ForEach(state.exercises, id: \.name) { exercise in
                ExerciseView(state: ExerciseViewState(exercise: exercise))
            } // FOR
            .listStyle(.plain)
        } // TAB
        .tabViewStyle(.page(indexDisplayMode: .never))
    }
}

struct StartScene_Previews: PreviewProvider {
    static var previews: some View {
        StartScene(state: StartSceneState(exercises: Training.mock[0].exercises))
    }
}
