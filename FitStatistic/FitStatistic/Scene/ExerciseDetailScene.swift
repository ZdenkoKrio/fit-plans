//
//  ExerciseDetailScene.swift
//  FitStatistic
//
//  Created by Zdenko Čepan on 28.09.2023.
//

import SwiftUI

struct ExerciseDetailScene: View {
    var body: some View {
        ScrollView(.vertical) {
            VStack(alignment: .center) {
                Text("Krčenie ramien s veľkou činkou")
                    .basicTitleStyle()
                    .multilineTextAlignment(.center)

                Image("Trapez1")
                    .resizable()
                    .frame(width: 350, height: 450)
                    .padding()
                
                Text("""
                 Postavte sa rovno s nohami v šírke ramien,  (dlane smerujúce k stehnám). Tip: Ruky by mali byť od seba trochu širšie ako šírka ramien. Na toto cvičenie môžete použiť náramky na zápästie pre lepšie uchopenie.
                 Zdvihnite svoje plecia až na maximum, počas toho vydychujete a na chvíľu hore držte kontrakciu. Tip: Nepokúšajte sa zdvíhať činku pomocou bicepsu.
                 Po vdýchnutí sa pomaly vráťte do východiskovej polohy.
                 Opakujte pre odporúčané množstvo opakovaní.
                 """)
                .padding()
            } // VSTACK
        } // SCROLL
    }
}

#Preview {
    ExerciseDetailScene()
}
