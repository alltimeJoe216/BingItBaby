//
//  UserSettingsViewController.swift
//  Binge It, Baby
//
//  Created by Marissa Gonzales on 4/28/20.
//  Copyright © 2020 Joe Veverka. All rights reserved.
//

import UIKit

class UserSettingsViewController: UIViewController {
    
    @IBOutlet weak var numberOfMoviesOnWatchListLabel: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        view.backgroundColor = .black
        
        //Func to see if movie is on watchlist
        movieIsOnList()
    }

    var movies: Movie?
    let homePageController = HomePageController()
    var delegate: MovieDetailDelegate?
    
    func movieIsOnList() {
        
        let currentMovies = homePageController.moviesOnMyList
        
        var movieOnWatchlist: [Movie] = []
        
        for movie in currentMovies {
            
            switch movie.userIsWatching {
                
            case true:
                movieOnWatchlist.append(movie)
                
            case false:
                break
            }
            numberOfMoviesOnWatchListLabel.text = "You currently have \(movieOnWatchlist.count) movies on your watchlist!"
        }
    }
}
