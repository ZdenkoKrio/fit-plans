//
//  TreningScene.swift
//  FitPlans
//
//  Created by Zdenko Čepan on 31.07.2023.
//

import SwiftUI

struct TrainingScene: View {
    var training: Training
    
    var body: some View {
        NavigationStack {
            Group {
                if !training.week.isEmpty {
                    List(training.week, id: \.id) { day in
                        NavigationLink(destination: DayScene(day: day)) {
                            TrainingRowView(day: day)
                        } // LINK
                    } // LIST
                    .listStyle(.plain)
                } else {
                    ProgressView()
                } // ELSE
            } // GROUP
            .navigationTitle(training.name)
            .navigationBarTitleDisplayMode(.automatic)
        } // NAVIGATION
    }
}

struct TrainingScene_Previews: PreviewProvider {
    static var previews: some View {
        TrainingScene(training: Training(id: 0, name: "Trainig1", isActive: true, week: Training.mock))
    }
}
