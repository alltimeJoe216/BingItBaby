//
//  TabBarViewController.swift
//  Binge It, Baby
//
//  Created by Marissa Gonzales on 4/29/20.
//  Copyright © 2020 Joe Veverka. All rights reserved.
//

import UIKit

class TabBarViewController: UITabBarController {
    
    let homePageController = HomePageController()
    
    func tabBarViewControllers() {
        
        guard let tabViewControllers = self.viewControllers,
            let homePageVC = tabViewControllers[0] as? HomePageCollectionViewController,
            let carouselVC = tabViewControllers[2] as? CarouselViewController,
            let userSettingsVC = tabViewControllers[1] as? UserSettingsViewController else { return }
        
        // Setting controller instance to each view controller
        homePageVC.homePageController = self.homePageController
        userSettingsVC.homePageController = self.homePageController 
        carouselVC.homePageController = self.homePageController
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        tabBarViewControllers()
    }
}
