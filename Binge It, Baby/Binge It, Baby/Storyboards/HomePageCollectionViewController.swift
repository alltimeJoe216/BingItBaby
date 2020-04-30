//
//  HomePageCollectionViewController.swift
//  Binge It, Baby
//
//  Created by Marissa Gonzales on 4/26/20.
//  Copyright © 2020 Joe Veverka. All rights reserved.
//

import UIKit




class HomePageCollectionViewController: UICollectionViewController {
    
    
    // Controller
    var homePageController: HomePageController?
    
    
    
    
    // ViewDidLoad
    override func viewDidLoad() {
        super.viewDidLoad()
        
        collectionView.delegate = self
        collectionView.dataSource = self
        collectionView.reloadData()
    }
    
    override func viewWillAppear(_ animated: Bool) {
        super.viewWillAppear(animated)
    }
    
    // MARK: - Navigation
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        
        if segue.identifier == "MovieDetailSegue" {
            
            guard let detailVC = segue.destination as? MovieDetailViewController else { return }
            guard let movie = collectionView.indexPathsForSelectedItems?.first else { return }
            detailVC.movie = homePageController?.movieList[movie.item]
            detailVC.delegate = self
        }
    }
    
    // MARK: UICollectionViewDataSource
    
    // HeaderView

    // Number of Sections
    
    override func numberOfSections(in collectionView: UICollectionView) -> Int {
        
        return 1
    }
    
    // Number of Items in Section
    
    override func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        
        return homePageController?.movieList.count ?? 0
    }
    
    // Cell seteup
    
    override func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) ->
        UICollectionViewCell {
            
            guard let cell = collectionView.dequeueReusableCell(withReuseIdentifier: "HomePageCollectionViewCell", for: indexPath) as? HomePageCollectionViewCell else { return UICollectionViewCell() }
            
            let movieCell = homePageController?.movieList[indexPath.row]
            
            // cell properties
            cell.movieList = movieCell
            cell.backgroundColor = .clear
            cell.contentView.layer.cornerRadius = 10
            cell.contentView.layer.borderWidth = 1.0
            cell.contentView.layer.borderColor = UIColor.black.cgColor
            cell.contentView.layer.masksToBounds = true;
            cell.layer.shadowColor = UIColor.purple.cgColor
            cell.layer.isOpaque = true
            cell.layer.shadowOffset = CGSize(width: 0, height: 0.0)
            cell.layer.shadowOffset = CGSize(width: 100, height: 50)
            cell.layer.shadowRadius = 10.0
            cell.layer.shadowOpacity = 1.0
            cell.layer.masksToBounds = true
            cell.layer.shadowPath = UIBezierPath(roundedRect: cell.bounds,
                                                 cornerRadius: cell.contentView.layer.cornerRadius).cgPath
            return cell
    }
    
    // MARK: UICollectionViewDelegate
    
    // Can Perform Action
    
    override func collectionView(_ collectionView: UICollectionView, canPerformAction action: Selector, forItemAt indexPath: IndexPath, withSender sender: Any?) -> Bool {
        return true
    }
}
extension HomePageCollectionViewController: AddMovieToWatchList {
    func movieWasAdded(_ movie: Movie) {
        homePageController?.movieAddedList.append(movie)
    }
}
