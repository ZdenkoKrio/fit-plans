//
//  BackgroundCardView.swift
//  FitStatistic
//
//  Created by Zdenko Čepan on 25.09.2023.
//

import SwiftUI

struct BackgroundCardView: View {
    let imageName: String
    let text: String
    let isEmptyTraining: Bool
    let isTrainingDay: Bool
    
    var body: some View {
        NavigationStack {
            Image(systemName: imageName)
                .resizable()
                .frame(width: 200, height: 200)
                .padding()
            
            Text(text)
                .font(.title)
                .fontWeight(.bold)
            
            if isEmptyTraining {
                NavigationLink(destination: UpdateTrainigScene()) {
                    Text("Create new Plan")
                            .padding()
                            .font(.title3)
                            .fontWeight(.bold)
                            .foregroundStyle(.white)
                            .background(.blue)
                            .clipShape(RoundedRectangle(cornerRadius: 16))
                            .overlay(
                                    RoundedRectangle(cornerRadius: 16)
                                        .stroke(.cyan, lineWidth: 6)
                                )
                }
               
            }
            
            if isTrainingDay {
                Button(action: /*@START_MENU_TOKEN@*/{}/*@END_MENU_TOKEN@*/, label: {
                    Text("Start")
                })
            }
            
        } // VSTACK
    }
}

#Preview {
    BackgroundCardView(imageName: "paintbrush", text: "Empty training plan", isEmptyTraining: true, isTrainingDay: false)
}
