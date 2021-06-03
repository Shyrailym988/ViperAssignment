//
//  TrendingMoviesTrendingMoviesViewInput.swift
//  ViperAssignment
//
//  Created by generamba setup on 01/06/2021.
//  Copyright © 2021 beka. All rights reserved.
//

import UIKit

protocol TrendingMoviesViewInput: class {

    /**
        @author generamba setup
        Setup initial state of the view
    */

    func setupInitialState()
    func setTrendingMovies(_ movies: [MovieNewsEntity.Movie])
    func getController() -> UIViewController
}
