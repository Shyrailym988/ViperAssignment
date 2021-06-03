//
//  TrendingMoviesTrendingMoviesPresenter.swift
//  ViperAssignment
//
//  Created by generamba setup on 01/06/2021.
//  Copyright © 2021 beka. All rights reserved.
//

class TrendingMoviesPresenter: TrendingMoviesModuleInput {

    weak var view: TrendingMoviesViewInput!
    var interactor: TrendingMoviesInteractorInput!
    var router: TrendingMoviesRouterInput!

    
}

extension TrendingMoviesPresenter: TrendingMoviesInteractorOutput {
 
    func setTrendingMovies(_ movies: [MovieNewsEntity.Movie]) {
        view?.setTrendingMovies(movies)
    }
}

extension TrendingMoviesPresenter: TrendingMoviesViewOutput {
    func viewIsReady() {

    }
    func getTrendingMovies(_ pageNumber: Int) {
        interactor?.getTrendingMovies(pageNumber)
    }
    func openMovieDetails(with id: Int) {
        router.openMovieDetails(with: id, controller: view.getController())
    }

}
