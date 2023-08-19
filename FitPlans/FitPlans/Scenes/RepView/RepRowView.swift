//
//  RepRowView.swift
//  FitPlans
//
//  Created by Zdenko Čepan on 10.08.2023.
//

import SwiftUI

struct RepRowView: View {
    let state: RepRowViewState
    
    var body: some View {
        HStack {
            Text(state.name)
                .font(.title)
                .fontWeight(.bold)
                .padding()
            Spacer()
            MyBasicButtonView(state: MyBasicButtonViewState(name: "-", action: {state.value -= 1}))
                .padding()
            Text("\(state.value)")
                .padding()
            MyBasicButtonView(state: MyBasicButtonViewState(name: "+", action: {state.value += 1}))
                .padding()
        }
    }
}

struct RepRowView_Previews: PreviewProvider {
    static var previews: some View {
        RepRowView(state: RepRowViewState(value: .constant(0), name: "Weight"))
    }
}
