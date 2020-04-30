//
//  WatchlistViewController.swift
//  Binge It, Baby
//
//  Created by Marissa Gonzales on 4/29/20.
//  Copyright © 2020 Joe Veverka. All rights reserved.
//

import UIKit

class WatchlistViewController: UIViewController {
    
    // ** TableView Outlet
    @IBOutlet weak var movieTableView: UITableView!
    
    // ** Instance of conroller object
    let homePageController = HomePageController()
    
    // Instance of a movie
    var movies: [Movie] = []
    
    // Override
    override func viewDidLoad() {
        super.viewDidLoad()
        
      
        movieTableView.reloadData()
    }
    
    private func movies(for indexPath: IndexPath) -> [Movie] {
        if indexPath.section == 0 {
            return homePageController.moviesOnMyList
        } else {
            return homePageController.moviesOnMyList
        }
    }
    
}
// TableView Extension
extension WatchlistViewController: UITableViewDataSource, UITableViewDelegate {
    
    func numberOfSections(in tableView: UITableView) -> Int {
        1
    }
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        movies.count    
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        guard let cell = tableView.dequeueReusableCell(withIdentifier: "WatchlistCell", for: indexPath) as? WatchlistTableViewCell else { fatalError("This is not a watchlist tableViewCell")}
        
        let movie = movies[indexPath.row]
        cell.imageView?.image = movie.image
        cell.movieTitleLabel.text = movie.name
        
        return cell
    }
}
//Movie Was Added Extension
extension WatchlistViewController: AddMovieToWatchList {
    func movieWasAdded(_ movie: Movie) {
        movies.append(movie)
        movieTableView.reloadData()
    }
}
