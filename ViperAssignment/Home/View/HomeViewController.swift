//
//  HomeHomeViewController.swift
//  ViperAssignment
//
//  Created by generamba setup on 02/06/2021.
//  Copyright © 2021 beka. All rights reserved.
//

import UIKit

class HomeViewController: UIViewController, HomeViewInput {

    var output: HomeViewOutput!

    // MARK: Life cycle
    override func viewDidLoad() {
        super.viewDidLoad()
        output.viewIsReady()
    }


    // MARK: HomeViewInput
    func setupInitialState() {
    }
}
