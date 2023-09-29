//
//  ButtonModifier.swift
//  FitStatistic
//
//  Created by Zdenko Čepan on 29.09.2023.
//

import SwiftUI

struct BasicButton: ViewModifier {
    func body(content: Content) -> some View {
        content
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

extension View {
    func basicButtonStyle() -> some View {
        modifier(BasicButton())
    }
}
