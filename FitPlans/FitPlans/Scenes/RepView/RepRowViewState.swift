//
//  RepRowViewState.swift
//  FitPlans
//
//  Created by Zdenko Čepan on 19.08.2023.
//

import SwiftUI

struct RepRowViewState: DynamicProperty {
    @Binding var value: Int
    let name: String
}
