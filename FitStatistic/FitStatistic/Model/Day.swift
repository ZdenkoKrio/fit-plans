//
//  Day.swift
//  FitStatistic
//
//  Created by Zdenko Čepan on 27.09.2023.
//

import Foundation
import SwiftData

@Model
final class Day {
    @Attribute(.unique) var name: String
    var exercises: [Exercise]
    
    init(name: String, exercises: [Exercise]) {
        self.name = name
        self.exercises = exercises
    }
}
