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
            let watchListVC = tabViewControllers[2] as? WatchlistViewController else { return }
        homePageVC.homePageController = self.homePageController
        watchListVC.homePageController = self.homePageController
    }
    override func viewDidLoad() {
        super.viewDidLoad()
        tabBarViewControllers()
    }
    // MARK: - Navigation
    
}
