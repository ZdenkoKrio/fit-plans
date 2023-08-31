//
//  Traning.swift
//  FitPlans
//
//  Created by Zdenko Čepan on 03.08.2023.
//

import Foundation


struct Training {
    let id: Int
    let name: String
    let isActive: Bool
    //let trainingDays: [String]
    //let weeks: [TrainingWeek]
    let week: [Day] // onlt days
}


extension Training {
    static let mock: [Day] = [Day(
        id: 1,
        name: "monady",
        exercises: [
            Exercise(id: 0, name: "Dlhy bench name", isRun: false, distanceKm: 0, time: TimeInterval(0),
                     series: [Series(reps: 10, weight: 60),
                                                     Series(reps: 8, weight: 70),
                                                     Series(reps: 5, weight: 80)],
                      best: BestOfTheDay(reps: 5, weight: 80)),
            Exercise(id: 1, name: "kladky", isRun: false, distanceKm: 0, time: TimeInterval(0),
                     series: [Series(reps: 10, weight: 60),
                                                      Series(reps: 8, weight: 70),
                                                      Series(reps: 5, weight: 80)],
                      best: BestOfTheDay(reps: 5, weight: 80)),
            Exercise(id: 2, name: "šikma", isRun: false, distanceKm: 0, time: TimeInterval(0),
                     series: [Series(reps: 10, weight: 60),
                                                     Series(reps: 8, weight: 70),
                                                     Series(reps: 5, weight: 80)],
                      best: BestOfTheDay(reps: 5, weight: 80))
        ]
    ),
                              Day(
                                id: 3,
                                name: "Wednesday",
                                exercises: [
                                    Exercise(id: 0, name: "bench", isRun: false, distanceKm: 0, time: TimeInterval(0),
                                             series: [Series(reps: 10, weight: 60),
                                                                             Series(reps: 8, weight: 70),
                                                                             Series(reps: 5, weight: 80)],
                                              best: BestOfTheDay(reps: 5, weight: 80)),
                                    Exercise(id: 1, name: "kladky", isRun: false, distanceKm: 0, time: TimeInterval(0),
                                             series: [Series(reps: 10, weight: 60),
                                                                              Series(reps: 8, weight: 70),
                                                                              Series(reps: 5, weight: 80)],
                                              best: BestOfTheDay(reps: 5, weight: 80)),
                                    Exercise(id: 2, name: "šikma", isRun: false, distanceKm: 0, time: TimeInterval(0),
                                             series: [Series(reps: 10, weight: 60),
                                                                             Series(reps: 8, weight: 70),
                                                                             Series(reps: 5, weight: 80)],
                                              best: BestOfTheDay(reps: 5, weight: 80))
                                ]
                              ),
                              Day(
                                id: 5,
                                name: "Friday",
                                exercises: [
                                    Exercise(id: 0, name: "bench", isRun: false, distanceKm: 0, time: TimeInterval(0),
                                             series: [Series(reps: 10, weight: 60),
                                                                             Series(reps: 8, weight: 70),
                                                                             Series(reps: 5, weight: 80)],
                                              best: BestOfTheDay(reps: 5, weight: 80)),
                                    Exercise(id: 1, name: "kladky", isRun: false, distanceKm: 0, time: TimeInterval(0),
                                             series: [Series(reps: 10, weight: 60),
                                                                              Series(reps: 8, weight: 70),
                                                                              Series(reps: 5, weight: 80)],
                                              best: BestOfTheDay(reps: 5, weight: 80)),
                                    Exercise(id: 2, name: "šikma", isRun: false, distanceKm: 0, time: TimeInterval(0),
                                             series: [Series(reps: 10, weight: 60),
                                                                             Series(reps: 8, weight: 70),
                                                                             Series(reps: 5, weight: 80)],
                                              best: BestOfTheDay(reps: 5, weight: 80))
                                ]
                              )
    ]
}
