//
//  ContentView.swift
//  FitPlans
//
//  Created by Zdenko Čepan on 30.07.2023.
//

import SwiftUI

struct ContentView: View {
    /*
    @Environment(\.managedObjectContext) private var viewContext

    @FetchRequest(
        sortDescriptors: [NSSortDescriptor(keyPath: \Training.timestamp, ascending: true)],
        animation: .default)
    private var trainings: FetchedResults<Training>
    */
    var body: some View {
        MainScene(trainings: [Training(id: 0, name: "Trainnig1", isActive: true, week: Training.mock),
                              Training(id: 1, name: "Trainnig2", isActive: false, week: Training.mock)])
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
