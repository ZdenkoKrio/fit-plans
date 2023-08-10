//
//  MyBasicButtonView.swift
//  FitPlans
//
//  Created by Zdenko Čepan on 10.08.2023.
//

import SwiftUI

struct MyBasicButtonView: View {
    let name: String
    let action: () -> Void
    
    var body: some View {
        Button(name, action: action)
            .frame(width: 50, height: 50)
            .background(.gray)
            .cornerRadius(15)
            .foregroundColor(.black)
            .shadow(radius: 6)
    }
}

struct MyBasicButtonView_Previews: PreviewProvider {
    static var previews: some View {
        MyBasicButtonView(name: "+", action: {})
    }
}
