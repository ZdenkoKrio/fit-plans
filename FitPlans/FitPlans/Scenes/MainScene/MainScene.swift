//
//  MainScene.swift
//  FitPlans
//
//  Created by Zdenko Čepan on 31.07.2023.
//

import SwiftUI

struct MainScene: View {
    @State var trainings: [Training]
    @State var newTraining: Bool = false
    
    var body: some View {
        NavigationStack {
            Group {
                if !trainings.isEmpty {
                    List(trainings, id: \.id) { training in
                        NavigationLink(destination: TrainingScene(state: TrainingSceneState(training: training))) {
                            MainRowView(name: training.name, isActive: training.isActive)
                        } // LINK
                    } // LIST
                    .listStyle(.plain)
                } else {
                    ProgressView()
                } // ELSE
            } // GROUP
            .navigationTitle("Trainings")
            .navigationBarTitleDisplayMode(.automatic)
            .toolbar {
                ToolbarItem(placement: .automatic) {
                    Button(action: { newTraining.toggle() }) {
                        Label("", systemImage: "plus")
                            .foregroundColor(.black)
                            .fontWeight(.heavy)
                    } // BUTTON
                } // TOOLBAR ITEM
            } // TOOLBAR
        } // NAVIGATION
        .sheet(isPresented: $newTraining) {
            NewTrainingScene(state: NewTrainingSceneState())
                .presentationDetents([.large])
                .presentationDragIndicator(.visible)
        }
    }
}

struct MainScene_Previews: PreviewProvider {
    static var previews: some View {
        MainScene(trainings: [Training(id: 0, name: "Trainnig1", isActive: true, week: Training.mock),
                              Training(id: 1, name: "Trainnig2", isActive: false, week: Training.mock)])
    }
}
