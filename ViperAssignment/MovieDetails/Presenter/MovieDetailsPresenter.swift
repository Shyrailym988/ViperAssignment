//
//  MovieDetailsMovieDetailsPresenter.swift
//  ViperAssignment
//
//  Created by generamba setup on 02/06/2021.
//  Copyright © 2021 beka. All rights reserved.
//

class MovieDetailsPresenter: MovieDetailsModuleInput, MovieDetailsViewOutput, MovieDetailsInteractorOutput {

    weak var view: MovieDetailsViewInput!
    var interactor: MovieDetailsInteractorInput!
    var router: MovieDetailsRouterInput!

    private var movieId: Int
    
    init(with id: Int) {
        self.movieId = id
    }
    
    func viewIsReady() {
        view?.setupInitialState(with: movieId)
    }
    func getMovieDetails() {
        interactor.getMovieDetails(with: movieId)

    }
}
