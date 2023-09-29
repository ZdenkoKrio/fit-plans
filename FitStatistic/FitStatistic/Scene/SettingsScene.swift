//
//  SettingsScene.swift
//  FitStatistic
//
//  Created by Zdenko Čepan on 29.09.2023.
//

import SwiftUI

struct SettingsScene: View {
    var body: some View {
        NavigationView {
            VStack(alignment: .center, spacing: 0) {
                Form {
                    Section(header: Text("section")) {
                        Text("Sec1")
                    } // SECTION
                    
                    Section {
                        Text("sec2")
                    } // SECTION
                } // FORM
            } // VSTACK
        } // NAVIGATION
    }
}

#Preview {
    SettingsScene()
}
