////
////  WatchlistViewController.swift
////  Binge It, Baby
////
////  Created by Marissa Gonzales on 4/29/20.
////  Copyright © 2020 Joe Veverka. All rights reserved.
////
//
//import UIKit
//
//class WatchlistViewController: UIViewController {
//
//    // ** TableView Outlet
//    @IBOutlet weak var movieTableView: UITableView!
//
//    
//    // ** Instance of conroller object
//    var homePageController: HomePageController?
//    
//    // Instance of a movie
//    var movies: [Movie] = []
//    
//    // Override
//    
//    override func viewWillAppear(_ animated: Bool) {
//        
//        super.viewWillAppear(animated)
//        movieTableView.reloadData()
//        
//    }
//    override func viewDidLoad() {
//        super.viewDidLoad()
//        movieTableView.delegate = self
//        movieTableView.dataSource = self
//        movieTableView.backgroundColor = .clear
//    }
//    
//}
////
////    private func movies(for indexPath: IndexPath) -> [Movie] {
////        if indexPath.section == 0 {
////            return homePageController.moviesOnMyList
////        } else {
////            return homePageController.moviesOnMyList
////        }
////    }
//    
//
//// TableView Extension
//extension WatchlistViewController: UITableViewDataSource, UITableViewDelegate {
//    
//    func numberOfSections(in tableView: UITableView) -> Int {
//        return 1
//   }
//    
//    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
//        return homePageController?.movieAddedList.count ?? 0
//    }
//    
//    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
//        guard let cell = tableView.dequeueReusableCell(withIdentifier: "WatchListCell", for: indexPath) as? WatchlistTableViewCell else { fatalError("This is not a watchlist tableViewCell")}
//        
//        guard let movie = homePageController?.movieAddedList[indexPath.row] else { return UITableViewCell() }
//        cell.imageView?.image = movie.image
//        cell.movieTitleLabel.text = movie.name
////        cell.backgroundColor = .clear
////        cell.contentView.layer.cornerRadius = 10
////        cell.contentView.layer.borderWidth = 1.0
////        cell.contentView.layer.borderColor = UIColor.black.cgColor
////        cell.contentView.layer.masksToBounds = true;
////        cell.layer.shadowColor = UIColor.purple.cgColor
////        cell.layer.isOpaque = true
////        cell.layer.shadowOffset = CGSize(width: 0, height: 0.0)
////        cell.layer.shadowRadius = 10.0
////        cell.layer.shadowOpacity = 1.0
////       cell.layer.masksToBounds = true
////        cell.layer.shadowPath = UIBezierPath(roundedRect: cell.bounds,
////                                             cornerRadius: cell.contentView.layer.cornerRadius).cgPath
////        
//        
//        return cell
//    }
//}
////Movie Was Added Extension
//extension WatchlistViewController: AddMovieToWatchList {
//    func movieWasAdded(_ movie: Movie) {
//        movies.append(movie)
//        movieTableView.reloadData()
//    }
//}
