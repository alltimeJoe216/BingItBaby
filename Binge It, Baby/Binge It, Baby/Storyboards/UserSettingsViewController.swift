//
//  UserSettingsViewController.swift
//  Binge It, Baby
//
//  Created by Marissa Gonzales on 4/28/20.
//  Copyright © 2020 Joe Veverka. All rights reserved.
//

import UIKit

class UserSettingsViewController: UIViewController {
    @IBOutlet weak var numberOfMoviesWatchListLabel: UILabel!
    
    // controller instance
    var homePageController: HomePageController?
    
    override func viewDidLoad() {
        super.viewDidLoad()
        updateViews()
    }
    
    // update # of movies on watch list
    func updateViews() {
        guard let currentMovies = homePageController?.movieAddedList.count else { return }
        numberOfMoviesWatchListLabel.text = "You currently have \(currentMovies) movies on your watchlist!"
    }
}


