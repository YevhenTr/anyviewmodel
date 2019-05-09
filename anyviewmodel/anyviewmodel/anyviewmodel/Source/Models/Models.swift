//
//  Models.swift
//  anyviewmodel
//
//  Created by Evhenyi Triukhan on 5/9/19.
//  Copyright © 2019 Student. All rights reserved.
//

import Foundation

struct Passanger: Personable {

    // MARK: - Propertis

    let name: String
    let age: Int

    // MARK: - Class Methods

    static var `default`: Passanger {
        return Passanger(name: "Passanger", age: 99)
    }
}

struct Driver {

    // MARK: - Propertis

    let firstName: String
    let lastName: String
    let birtday: Date

    // MARK: - Class Methods

    static var `default`: Driver {
        return Driver(firstName: "Driver", lastName: "One", birtday: .thirtyYearsAgo())
    }
}

extension Driver {

    func toPersonable() -> Personable {

        return PersonableObject(name: self.firstName + ", " + self.lastName, age: self.birtday.toAge())
    }
}


struct PersonableObject: Personable {

    // MARK: - Propertis

    var name: String
    var age: Int
}

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
