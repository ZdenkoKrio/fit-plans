//
//  DayExercisesUpdateScene.swift
//  FitStatistic
//
//  Created by Zdenko Čepan on 28.09.2023.
//

import SwiftUI

struct DayExercisesUpdateScene: View {
    @State var showingAddNewExercise: Bool = false
    //var day: Day
    var exercises: [Exercises] = Exercises.exercises
    
    var body: some View {
        NavigationStack {
            ZStack {
                List(exercises, id: \.self) { exercise in
                    NavigationLink(destination: ExerciseDetailScene()) {
                        ExerciseRow(data: exercise)
                    } // LINK
                } // LIST
            } // ZSTACK
            .overlay(
                AddPlusButtonView(showingAddNewExercise: $showingAddNewExercise)
                , alignment: .bottomTrailing
            )
        } // NAVIGATION
        .sheet(isPresented: $showingAddNewExercise, content: {
            AddNewExerciseScene()
                .presentationDetents([.fraction(0.5)])
                .presentationDragIndicator(.visible)
        })
    }
}

#Preview {
    DayExercisesUpdateScene()
}
