//
//  HomePageCollectionViewCell.swift
//  Binge It, Baby
//
//  Created by Marissa Gonzales on 4/26/20.
//  Copyright © 2020 Joe Veverka. All rights reserved.
//

import UIKit

class HomePageCollectionViewCell: UICollectionViewCell {
    
    // Outlets
    @IBOutlet weak var currentSeasonAndEpisodeLabel: UILabel!
    @IBOutlet weak var ratingLabel: UILabel!
    @IBOutlet weak var movieNameLabel: UILabel!
    @IBOutlet weak var movieImageView: UIImageView!
    
    
    // Update Views 
    var movieList: Movie? {
        didSet {
            updateViews()
        }
    }

    func updateViews() {
        
        // Genre Label
        currentSeasonAndEpisodeLabel.text = "Genre: \(movieList!.genre)"
        currentSeasonAndEpisodeLabel.textColor = .white
        
        // Movie Name Label
        movieNameLabel.text = movieList!.name
        movieNameLabel.textColor = .white
        
        // Image View
        movieImageView.image = movieList!.image
        
        // Ratings Label
        guard let ratings = movieList!.rating else { return }
        ratingLabel.text = "Rating: \(ratings)"
        ratingLabel.textColor = .white
        
    }
}
