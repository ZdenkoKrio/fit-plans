//
//  AddPlusButtonView.swift
//  FitStatistic
//
//  Created by Zdenko Čepan on 28.09.2023.
//

import SwiftUI

struct AddPlusButtonView: View {
    @State var animatingButton: Bool = false
    @Binding var showingAddNewExercise: Bool
    var body: some View {
        ZStack {
            Group {
                Circle()
                    .fill(.blue)
                    .opacity(self.animatingButton ? 0.2 : 0)
                    .scaleEffect(self.animatingButton ? 1 : 0)
                    .frame(width: 68, height: 68, alignment: .center)
                Circle()
                    .fill(.blue)
                    .opacity(self.animatingButton ? 0.15 : 0)
                    .scaleEffect(self.animatingButton ? 1 : 0)
                    .frame(width: 88, height: 88, alignment: .center)
            } // GROUP
    // TODO why my toolbar items shaking forever but button not?
            .onAppear(perform: {
                withAnimation(Animation.easeOut(duration: 2).repeatForever(autoreverses: true)) {
                    self.animatingButton.toggle()
                }
            })
            
            Button(action: {
                self.showingAddNewExercise.toggle()
            }) {
                Image(systemName: "plus.circle.fill")
                    .resizable()
                    .scaledToFit()
                    .background(Circle().fill(Color("ColorBase")))
                    .frame(width: 48, height: 48, alignment: .center)
            } //BUTTON
            .accentColor(.blue)
        } // ZSTACK
            .padding(.bottom, 15)
            .padding(.trailing, 15)
    }
}

#Preview {
    AddPlusButtonView(showingAddNewExercise: .constant(false))
}
