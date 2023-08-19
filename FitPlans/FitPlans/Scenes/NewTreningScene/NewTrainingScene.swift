//
//  NewTreningScene.swift
//  FitPlans
//
//  Created by Zdenko Čepan on 31.07.2023.
//

import SwiftUI

struct NewTrainingScene: View {
    let state: NewTrainingSceneState
    
    var body: some View {
        VStack {
            Text("Create new training")
                .font(.largeTitle)
                .fontWeight(.heavy)
            Divider()
            TextField("Your training name", text: state.$trainingName)
            Divider()
            RepRowView(state: RepRowViewState(value: state.$daysNumber, name: "Days"))
            Divider()
            ScrollView(.horizontal) {
                Grid {
                    GridRow {
                        ForEach(1...state.daysNumber, id: \.self) {num in
                            NewDayView(state: NewDayViewState(days: state.$days, number: num))
                        } // FOREACH
                    } // ROW
                } // GRID
            } // SCROLL
        } // VSTACK
        .frame(width: UIScreen.main.bounds.width)
        .padding()
    }
}

struct NewTreningScene_Previews: PreviewProvider {
    static var previews: some View {
        NewTrainingScene(state: NewTrainingSceneState())
    }
}
