//
//  MovieDetailsMovieDetailsInitializer.swift
//  ViperAssignment
//
//  Created by generamba setup on 02/06/2021.
//  Copyright © 2021 beka. All rights reserved.
//

import UIKit

class MovieDetailsModuleInitializer: NSObject {


    func viewController(with id: Int) -> UIViewController {
        let storyboard = UIStoryboard(name: "MovieDetails", bundle: Bundle.main)
        let vc: MovieDetailsViewController = storyboard.instantiateViewController(withIdentifier: "MovieDetailsViewController") as! MovieDetailsViewController
        let configurator = MovieDetailsModuleConfigurator()
        configurator.configureModuleForViewInput(viewInput: vc, with: id)
        
        return vc
    }

}
