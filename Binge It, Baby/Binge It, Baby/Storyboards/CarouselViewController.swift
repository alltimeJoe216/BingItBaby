//
//  CarouselViewController.swift
//  Binge It, Baby
//
//  Created by Marissa Gonzales on 4/30/20.
//  Copyright © 2020 Joe Veverka. All rights reserved.
//

import Foundation
import UIKit

class CarouselViewController: UIViewController {
    
    // CollectionView Outlet
    @IBOutlet weak var collectionView: UICollectionView!
    
    // MARK: - Properties
    var homePageController: HomePageController?
    var movies: [Movie] = []
    
    // MARK: - View methods
    
    override func viewWillAppear(_ animated: Bool) {
        super.viewWillAppear(animated)
        collectionView.reloadData()
    }
    override func viewDidLoad() {
        
        // Setting CollectionView DataSource+Delegate to this VC.
        collectionView.dataSource = self
        collectionView.delegate = self
        collectionView.reloadData()
    }
}
// MARK: - UICOllectionViewDataSource

extension CarouselViewController: UICollectionViewDataSource, UICollectionViewDelegate {
    func numberOfSections(in collectionView: UICollectionView) -> Int {
        1
    }
    
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int
    {
        return homePageController?.movieAddedList.count ?? 0
    }
    
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        guard let cell = collectionView.dequeueReusableCell(withReuseIdentifier: "CarouselCollectionViewCell", for: indexPath) as? CarouselCollectionViewCell,
            let movie = homePageController?.movieAddedList[indexPath.row] else { return UICollectionViewCell()}
        
        cell.featuredImageView.image = movie.image
        cell.movieTitleLabel.text = movie.name
        return cell
    }
}
extension CarouselViewController: AddMovieToWatchList {
    func movieWasAdded(_ movie: Movie) {
        movies.append(movie)
        collectionView.reloadData()
    }
}
