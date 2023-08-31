//
//  ExcerciseRowView.swift
//  FitPlansWatch Watch App
//
//  Created by Zdenko Čepan on 31.08.2023.
//

import SwiftUI

struct ExcerciseRowView: View {
    let state: ExerciseRowViewState
    
    var body: some View {
        Text("\(state.name)")
        Spacer()
        Text("\(state.series)")
    }
}

struct ExcerciseRowView_Previews: PreviewProvider {
    static var previews: some View {
        ExcerciseRowView(state: ExerciseRowViewState(name: "Bench", series: 3))
    }
}
