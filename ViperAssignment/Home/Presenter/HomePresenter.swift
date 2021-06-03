//
//  HomeHomePresenter.swift
//  ViperAssignment
//
//  Created by generamba setup on 02/06/2021.
//  Copyright © 2021 beka. All rights reserved.
//

class HomePresenter: HomeModuleInput, HomeViewOutput, HomeInteractorOutput {

    weak var view: HomeViewInput!
    var interactor: HomeInteractorInput!
    var router: HomeRouterInput!

    func viewIsReady() {

    }
}
