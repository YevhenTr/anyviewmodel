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
    let age: Int

    // MARK: - Class Methods

    static var `default`: Driver {
        return Driver(firstName: "Driver", lastName: "One", age: 99)
    }
}

extension Driver {

    func toPersonable() -> Personable {

        return PersonableObject(name: self.firstName + ", " + self.lastName, age: self.age)
    }
}


struct PersonableObject: Personable {

    // MARK: - Propertis

    var name: String
    var age: Int
}
