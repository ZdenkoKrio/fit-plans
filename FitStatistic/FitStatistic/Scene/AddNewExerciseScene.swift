//
//  AddNewExerciseScene.swift
//  FitStatistic
//
//  Created by Zdenko Čepan on 28.09.2023.
//

import SwiftUI

struct AddNewExerciseScene: View {
    @State var selectedExerciseType: ExerciseType = ExerciseType.abdomen
    @State var selectedExercise: Exercises = Exercises.exercises[2]
    // TODO selectedExercise
    @State var selectedNumberOfSeries: Int = 3
    
    var body: some View {
        VStack(alignment: .center) {
            Text("Add new Exercise")
                .basicTitleStyle()
            Form {
                Section {
                    Picker("Partia: ", selection: $selectedExerciseType) {
                        ForEach(ExerciseType.allCases) { exerciseType in
                            Text(exerciseType.rawValue)
                                .font(.title)
                                .fontWeight(.medium)
                        }
                    } // PICKER
                    .pickerStyle(.menu)
                    .padding(.horizontal)
                    
                    Picker("Cvik: ", selection: $selectedExercise) {
                        ForEach(Exercises.exercises.filter{
                            $0.type == selectedExerciseType
                        }, id: \.name)  { exercise in
                            Text(exercise.name)
                                .font(.title)
                                .fontWeight(.medium)
                        }
                    } // PICKER
                    .pickerStyle(.menu)
                    .padding(.horizontal)
                    
                    Picker("Počet Seríi: ", selection: $selectedNumberOfSeries) {
                        ForEach(1...5, id: \.self)  { number in
                            Text("\(number)")
                        }
                    } // PICKER
                    .pickerStyle(.palette)
                    .padding()
                    
                    HStack(alignment: .center) {
                        Spacer()
                        Button(action: {}) {
                            Text("Uložiť")
                                .basicButtonStyle()
                        } // BUTTON
                        Spacer()
                    } // HSTACK
                } // SECTION
            } // FORM
        } // VSTACK
        .frame(height: 400)
    }
}

#Preview {
    AddNewExerciseScene()
}
