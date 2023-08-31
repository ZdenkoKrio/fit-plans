//
//  MyBasicButtonView.swift
//  FitPlans
//
//  Created by Zdenko Čepan on 10.08.2023.
//

import SwiftUI

struct MyBasicButtonView: View {
    let state: MyBasicButtonViewState
    
    var body: some View {
        Button(state.name, action: state.action)
            .frame(width: 40, height: 40)
            .background(.gray)
            .cornerRadius(15)
            .foregroundColor(.black)
            .shadow(radius: 6)
    }
}

struct MyBasicButtonView_Previews: PreviewProvider {
    static var previews: some View {
        MyBasicButtonView(state: MyBasicButtonViewState(name: "+", action: {}))
    }
}
