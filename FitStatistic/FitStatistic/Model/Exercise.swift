//
//  Exercise.swift
//  FitStatistic
//
//  Created by Zdenko Čepan on 27.09.2023.
//

import Foundation
import SwiftData

@Model
final class Exercise {
    @Attribute(.unique) var id: UUID
    //let type: ExerciseType
    var numberOfSeries: Int
    
    init(id: UUID, type: ExerciseType, numberOfSeries: Int) {
        self.id = id
        //self.type = type
        self.numberOfSeries = numberOfSeries
    }
}
