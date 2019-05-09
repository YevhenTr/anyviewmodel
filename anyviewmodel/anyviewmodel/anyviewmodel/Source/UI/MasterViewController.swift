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


    @IBAction func onAction(_ sender: UIButton) {
        let controller = DetailViewController(nibName: nil, bundle: nil)

        self.navigationController?.pushViewController(controller, animated: true)
    }
}

