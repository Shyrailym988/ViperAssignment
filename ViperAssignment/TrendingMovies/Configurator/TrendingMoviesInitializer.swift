//
//  TrendingMoviesTrendingMoviesInitializer.swift
//  ViperAssignment
//
//  Created by generamba setup on 01/06/2021.
//  Copyright © 2021 beka. All rights reserved.
//

import UIKit

class TrendingMoviesModuleInitializer: NSObject {
    
    func viewController() -> UIViewController {
        let storyboard = UIStoryboard(name: "TrendingMoviesStoryboard", bundle: Bundle.main)
        let vc: TrendingMoviesViewController = storyboard.instantiateViewController(withIdentifier: "TrendingMoviesViewController") as! TrendingMoviesViewController
        let configurator = TrendingMoviesModuleConfigurator()
        configurator.configureModuleForViewInput(viewInput: vc)
        
        return vc
    }

}
