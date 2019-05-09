//
//  MasterViewController.swift
//  anyviewmodel
//
//  Created by Evhenyi Triukhan on 5/9/19.
//  Copyright © 2019 Student. All rights reserved.
//

import UIKit

class MasterViewController: UIViewController, RootViewRepresentable {

    // MARK: - Subtypes

    typealias RootView = MasterView

    // MARK: - View Lifecycle

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }

    // MARK: - UI Actions

    @IBAction func onShowDriver(_ sender: UIButton) {
        let controller = DetailViewController.create(model: Driver.default.toPersonable())

        self.push(controller)
    }

    @IBAction func onShowPassanger(_ sender: UIButton) {
        let controller = DetailViewController.create(model: Passanger.default)
        self.push(controller)
    }

    // MARK: - Private API

    private func push(_ controller: UIViewController) {
        self.navigationController?.pushViewController(controller, animated: true)
    }
}

