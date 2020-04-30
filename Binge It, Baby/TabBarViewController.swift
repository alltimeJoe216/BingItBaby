//
//  TabBarViewController.swift
//  Binge It, Baby
//
//  Created by Marissa Gonzales on 4/29/20.
//  Copyright © 2020 Joe Veverka. All rights reserved.
//

import UIKit

class TabBarViewController: UITabBarController {
//    
//    let homePageController = HomePageController()
//    
//    func tabBarViewControllers() {
//        
//        let tabViewControllers = tabBarController?.viewControllers
//        
//        guard let homePageVC = tabViewControllers?[0] as? HomePageCollectionViewController else { return }
//        
//        homePageVC.homePageController = self.homePageController
//    }

    override func viewDidLoad() {
        super.viewDidLoad()
//        tabBarViewControllers()

        // Do any additional setup after loading the view.
    }

    
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if let homePageVC = segue.destination as? HomePageCollectionViewController {
            print("Going To HomePageVC")
        }

    }
    

}
