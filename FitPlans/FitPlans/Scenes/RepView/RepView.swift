//
//  RepView.swift
//  FitPlans
//
//  Created by Zdenko Čepan on 10.08.2023.
//

import SwiftUI

struct RepView: View {
    let state: RepViewState
    
    var body: some View {
        VStack {
            Text("Series \(state.number)")
                .font(.title)
                .fontWeight(.bold)
                .padding()
            RepRowView(state: RepRowViewState(value: state.$weight, name: "Weight"))
            RepRowView(state: RepRowViewState(value: state.$reps, name: "Reps"))
        }
    }
}

struct RepView_Previews: PreviewProvider {
    static var previews: some View {
        RepView(state: RepViewState(rep: Series(reps: 0, weight: 0), number: 1))
    }
}
