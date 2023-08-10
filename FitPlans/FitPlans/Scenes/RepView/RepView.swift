//
//  RepView.swift
//  FitPlans
//
//  Created by Zdenko Čepan on 10.08.2023.
//

import SwiftUI

struct RepView: View {
    var rep: Series
    let number: Int
    @State var weight: Int = 0
    @State var reps: Int = 0
    
    var body: some View {
        VStack {
            Text("Series \(number)")
                .font(.title)
                .fontWeight(.bold)
                .padding()
            RepRowView(value: $weight, name: "Weight")
            RepRowView(value: $reps, name: "Reps")
        }
    }
}

struct RepView_Previews: PreviewProvider {
    static var previews: some View {
        RepView(rep: Series(reps: 0, weight: 0), number: 1)
    }
}
