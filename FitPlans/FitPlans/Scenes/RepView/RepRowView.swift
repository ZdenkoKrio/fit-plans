//
//  RepRowView.swift
//  FitPlans
//
//  Created by Zdenko Čepan on 10.08.2023.
//

import SwiftUI

struct RepRowView: View {
    @Binding var value: Int
    let name: String
    
    var body: some View {
        HStack {
            Text(name)
                .font(.title)
                .fontWeight(.bold)
                .padding()
            Spacer()
            MyBasicButtonView(name: "-", action: {value -= 1})
                .padding()
            Text("\(value)")
                .padding()
            MyBasicButtonView(name: "+", action: {value += 1})
                .padding()
        }
    }
}

struct RepRowView_Previews: PreviewProvider {
    static var previews: some View {
        RepRowView(value: .constant(0), name: "Weight")
    }
}
