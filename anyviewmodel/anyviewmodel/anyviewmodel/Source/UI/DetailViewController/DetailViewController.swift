//
//  DetailViewController.swift
//  anyviewmodel
//
//  Created by Evhenyi Triukhan on 5/9/19.
//  Copyright © 2019 Student. All rights reserved.
//

import UIKit

class DetailViewController: UIViewController, RootViewRepresentable {

    // MARK: - Subtypes

    typealias RootView = DetailView

    // MARK: - Properties

    var model: Personable?

    // MARK: - Class Methods

    static func create(model: Personable) -> DetailViewController {
        let controller = DetailViewController(nibName: nil, bundle: nil)
        controller.model = model

        return controller
    }

    // MARK: - View Lifecycle

    override func viewDidLoad() {
        super.viewDidLoad()

        self.model.map { self.rootView?.fill(with: $0) }
    }
}
