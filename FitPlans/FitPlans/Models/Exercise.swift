//
//  Excercise.swift
//  FitPlans
//
//  Created by Zdenko Čepan on 31.07.2023.
//

import Foundation

struct Exercise {
    let id: Int
    let name: String
    let isRun: Bool
    let distanceKm: Double?
    let time: TimeInterval?
    let series: [Series]?
    let best: BestOfTheDay
}
