//
//  StatisticModel.swift
//  20241215_CryptoAPP
//
//  Created by Yen Lin on 2025/1/14.
//

import Foundation

class StatisticModel: Identifiable {
    let id = UUID().uuidString
    let title: String
    let value: String
    let percentageChange: Double?
    
    init(title: String, value: String, percentageChange: Double? = nil) {
        self.title = title
        self.value = value
        self.percentageChange = percentageChange
    }
}
