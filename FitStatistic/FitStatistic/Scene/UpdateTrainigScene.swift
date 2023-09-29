//
//  UpdateTrainigScene.swift
//  FitStatistic
//
//  Created by Zdenko Čepan on 25.09.2023.
//

import SwiftUI
import SwiftData

struct UpdateTrainigScene: View {
    @Query private var days: [Day]
    
    let daysStatic: [String] = ["Pondelok", "Utorok", "Streda", "Štvrtok",
                          "Piatok", "Sobota", "Nedela"]
    
    var body: some View {
        NavigationStack {
            List(daysStatic, id: \.self) { day in
                NavigationLink(destination: DayExercisesUpdateScene()) {
                    Text(day)
                        .font(.title)
                        .fontWeight(.medium)
                        .padding()
                } // LINK
            } // LIST
        } // STACK
    }
}

#Preview {
    UpdateTrainigScene()
}
