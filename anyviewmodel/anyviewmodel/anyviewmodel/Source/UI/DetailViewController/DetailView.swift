//
//  DetailView.swift
//  anyviewmodel
//
//  Created by Evhenyi Triukhan on 5/9/19.
//  Copyright © 2019 Student. All rights reserved.
//

import UIKit

class DetailView: UIView {

    // MARK: - Properties
    
    @IBOutlet var nameLabel: UILabel?
    @IBOutlet var ageLabel: UILabel?

    // MARK: - Public API

    func fill(with model: Personable) {
        self.nameLabel?.text = model.name
        self.ageLabel?.text = model.age.description
    }
}
