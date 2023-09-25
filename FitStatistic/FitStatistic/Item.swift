//
//  Item.swift
//  FitStatistic
//
//  Created by Zdenko Čepan on 23.09.2023.
//

import Foundation
import SwiftData

@Model
final class Item {
    var timestamp: Date
    
    init(timestamp: Date) {
        self.timestamp = timestamp
    }
}
