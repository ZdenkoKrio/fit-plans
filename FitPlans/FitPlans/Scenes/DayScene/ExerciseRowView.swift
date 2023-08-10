//
//  ExcerciseRowView.swift
//  FitPlans
//
//  Created by Zdenko Čepan on 03.08.2023.
//

import SwiftUI

struct ExerciseRowView: View {
    let name: String
    @State var best: BestOfTheDay
    
    var body: some View {
        HStack {
            Text(name)
                .font(.title)
                .fontWeight(.heavy)
            Spacer()
            Text("\(best.weight)kg")
                .font(.title2)
                .fontWeight(.bold)
                .padding()
            Text("\(best.reps) reps")
                .font(.title2)
                .fontWeight(.bold)
                .padding()
        } // HSTACK
        .padding()
    }
}

struct ExerciseRowView_Previews: PreviewProvider {
    static var previews: some View {
        ExerciseRowView(name: "Bench", best: BestOfTheDay(reps: 10, weight: 100))
    }
}
