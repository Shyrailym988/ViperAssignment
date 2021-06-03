//
//  HomeHomeInitializer.swift
//  ViperAssignment
//
//  Created by generamba setup on 02/06/2021.
//  Copyright © 2021 beka. All rights reserved.
//

import UIKit

class HomeModuleInitializer: NSObject {


    func viewController() -> UIViewController {
        let storyboard = UIStoryboard(name: "Home", bundle: Bundle.main)
        let vc: HomeViewController = storyboard.instantiateViewController(withIdentifier: "HomeViewController") as! HomeViewController
        let configurator = HomeModuleConfigurator()
        configurator.configureModuleForViewInput(viewInput: vc)
        
        return vc
    }

}
