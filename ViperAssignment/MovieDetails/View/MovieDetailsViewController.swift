//
//  MovieDetailsMovieDetailsViewController.swift
//  ViperAssignment
//
//  Created by generamba setup on 02/06/2021.
//  Copyright © 2021 beka. All rights reserved.
//

import UIKit

class MovieDetailsViewController: UIViewController, MovieDetailsViewInput {

    var output: MovieDetailsViewOutput!

    // MARK: Life cycle
    override func viewDidLoad() {
        super.viewDidLoad()
        output.viewIsReady()
        output.getMovieDetails()

    }


    // MARK: MovieDetailsViewInput
    func setupInitialState(with id: Int) {
        print(id)
    }
}
