//
//  TrainingRowView.swift
//  FitPlans
//
//  Created by Zdenko Čepan on 03.08.2023.
//

import SwiftUI

struct TrainingRowView: View {
    let day: Day
    
    var body: some View {
        HStack {
            Text(day.name)
        } // HSTACK
    }
}

struct TrainingRowView_Previews: PreviewProvider {
    static var previews: some View {
        TrainingRowView(day: Training.mock[0])
    }
}
