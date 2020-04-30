//
//  WatchlistTableViewCell.swift
//  Binge It, Baby
//
//  Created by Marissa Gonzales on 4/29/20.
//  Copyright © 2020 Joe Veverka. All rights reserved.
//

import UIKit

class WatchlistTableViewCell: UITableViewCell {
    
    // Outlets
    @IBOutlet weak var movieTitleLabel: UILabel!
    @IBOutlet weak var movieImage: UIImageView!
    
    
    // Instance of a Movie
    var movie: Movie? {
        didSet {
            updateViews()
        }
    }
    
    // UpdateViews for tableViewCell
    private func updateViews() {
        guard let movie = movie else { return }
        
        movieImage.image = movie.image
        movieTitleLabel.text = movie.name
    }
}
