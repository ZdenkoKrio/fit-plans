//
//  MainRowView.swift
//  FitPlans
//
//  Created by Zdenko Čepan on 03.08.2023.
//

import SwiftUI

struct MainRowView: View {
    let name: String
    @State var isActive: Bool
    var body: some View {
        HStack {
            Text(name)
                .font(.title)
                .fontWeight(.heavy)
            Spacer()
            Image(systemName: isActive ? "star.fill" : "star")
                .resizable()
                .frame(width: 30, height: 30)
                .padding()
                .onTapGesture {
                    isActive.toggle()
                }
                
        } // HSTACK
    }
}

struct MainRowView_Previews: PreviewProvider {
    static var previews: some View {
        MainRowView(name: "Trening1", isActive: true)
    }
}
