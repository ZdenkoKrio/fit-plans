//
//  ExcerciseDetailScene.swift
//  FitPlans
//
//  Created by Zdenko Čepan on 03.08.2023.
//

import SwiftUI

struct ExerciseDetailScene: View {
    @State var exercise: Exercise
    @State var actualSeries: Series = Series(reps: 0, weight: 0)
    @State var writing: Bool = false
    
    var body: some View {
        VStack {
            Text(exercise.name)
                .font(.largeTitle)
                .fontWeight(.bold)
            HStack {
                ForEach((0...exercise.series.count), id: \.self) { rep in
                    Button("Series \(rep + 1)") {
                        actualSeries = exercise.series[rep]
                        writing.toggle()
                    } // BUTTON
                } // FOREACH
            } // HSTACK
            GrafView()
                .padding(50)
            
            Spacer()
        } // VSTACK
        .sheet(isPresented: $writing) {
            RepView(rep: actualSeries, number: 1)
                .presentationDetents([.medium])
                .presentationDragIndicator(.visible)
        } // SHEET
    }
}

struct ExerciseDetailScene_Previews: PreviewProvider {
    static var previews: some View {
        ExerciseDetailScene(exercise: Exercise(id: 1, name: "Bench", series: [Series(reps: 0, weight: 0),
                                                                             Series(reps: 0, weight: 0),
                                                                             Series(reps: 0, weight: 0)], best: BestOfTheDay(reps: 0, weight: 0)))
    }
}
