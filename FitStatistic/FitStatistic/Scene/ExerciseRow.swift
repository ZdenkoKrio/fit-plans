//
//  ExerciseRow.swift
//  FitStatistic
//
//  Created by Zdenko Čepan on 28.09.2023.
//

import SwiftUI

struct ExerciseRow: View {
    let data: Exercises
    
    var body: some View {
        HStack {
            VStack {
                Text("Krčenie ramien s veľkou činkou")
                    .font(.title)
                    .fontWeight(.medium)
                
                Text("Trapeza")
                    .font(.title2)
            }
            
            Spacer()
            
            Text("6")
                .font(.title)
        } // HSTACK
        .padding(5)
    }
}

#Preview {
    ExerciseRow(data: Exercises.exercises[0])
}
