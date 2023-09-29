//
//  TitleModifier.swift
//  FitStatistic
//
//  Created by Zdenko Čepan on 29.09.2023.
//

import SwiftUI

struct BasicTitle: ViewModifier {
    func body(content: Content) -> some View {
        content
            .font(.largeTitle)
            .fontWeight(.bold)
            .padding()
    }
}


extension View {
    func basicTitleStyle() -> some View {
        modifier(BasicTitle())
    }
}
