//
//  TrainingRowView.swift
//  FitPlans
//
//  Created by Zdenko Čepan on 03.08.2023.
//

import SwiftUI

struct TrainingRowView: View {
    let state: TrainingRowViewState
    
    var body: some View {
        HStack {
            Text(state.name)
        } // HSTACK
    }
}

struct TrainingRowView_Previews: PreviewProvider {
    static var previews: some View {
        TrainingRowView(state: TrainingRowViewState(day: Training.mock[0]))
    }
}
