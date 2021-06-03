//
//  TrendingMoviesTrendingMoviesViewOutput.swift
//  ViperAssignment
//
//  Created by generamba setup on 01/06/2021.
//  Copyright © 2021 beka. All rights reserved.
//

protocol TrendingMoviesViewOutput {

    /**
        @author generamba setup
        Notify presenter that view is ready
    */

    func viewIsReady()
    func getTrendingMovies(_ pageNumber: Int)
    func openMovieDetails(with id: Int)
}
