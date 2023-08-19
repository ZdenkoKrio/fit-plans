//
//  MyBasicButtonViewState.swift
//  FitPlans
//
//  Created by Zdenko Čepan on 19.08.2023.
//

import SwiftUI

struct MyBasicButtonViewState: DynamicProperty {
    let name: String
    let action: () -> Void
}
