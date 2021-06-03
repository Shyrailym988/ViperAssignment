//
//  TrendingMoviesTrendingMoviesInteractorOutput.swift
//  ViperAssignment
//
//  Created by generamba setup on 01/06/2021.
//  Copyright © 2021 beka. All rights reserved.
//

import Foundation

protocol TrendingMoviesInteractorOutput: class {
    func setTrendingMovies(_ movies: [MovieNewsEntity.Movie])
}
