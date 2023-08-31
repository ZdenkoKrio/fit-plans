//
//  ExcerciseDetailScene.swift
//  FitPlans
//
//  Created by Zdenko Čepan on 03.08.2023.
//

import SwiftUI

struct ExerciseDetailScene: View {
    let state: ExerciseDetailSceneState
    
    var body: some View {
        VStack {
            Text(state.name)
                .font(.largeTitle)
                .fontWeight(.heavy)
            ScrollView (.horizontal) {
                HStack {
                    ForEach((0...state.seriesCount), id: \.self) { rep in
                        SeriesButtonView(state: SeriesButtonViewState(series: rep, actualSeries: state.$actualSeries, exercise: state.$exercise, writing: state.$writing, seriesNumber: state.$series))
                    } // FOREACH
                } // HSTACK
                .padding()
            } // SCROLL
            
            GrafView()
                .padding(50)
            
            Spacer()
        } // VSTACK
        .sheet(isPresented: state.$writing) {
            RepView(state: RepViewState(rep: state.actualSeries, number: state.series))
                .presentationDetents([.medium])
                .presentationDragIndicator(.visible)
        } // SHEET
    }
}

struct ExerciseDetailScene_Previews: PreviewProvider {
    static var previews: some View {
        ExerciseDetailScene(state: ExerciseDetailSceneState(exercise: Training.mock[0].exercises[0]))
    }
}
