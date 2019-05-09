//
//  Extensions.swift
//  anyviewmodel
//
//  Created by Evhenyi Triukhan on 5/9/19.
//  Copyright © 2019 Student. All rights reserved.
//

import Foundation

extension Date {

    static func thirtyYearsAgo() -> Date {
        var dateComponents = DateComponents()
        dateComponents.year = 1989  //  31 December 1988 0:00

        return Calendar.current.date(from: dateComponents) ?? Date()
    }

    func toAge() -> Int {
        return Calendar.current.dateComponents([.year], from: self, to: Date()).year ?? 0
    }
}

extension Double {

    func toInt() -> Int {
        return Int(self)
    }
}
