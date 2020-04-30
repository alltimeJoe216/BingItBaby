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
    @IBOutlet weak var cellView: UIView!
    @IBOutlet weak var watchMovieButton: UIButton!
    
    
    
    
    
    
    
//    func updateCell() {
//    cellView.backgroundColor = .clear
//    cellView.layer.cornerRadius = 10
//    cellView.layer.borderColor = UIColor.black.cgColor
//    cellView.layer.masksToBounds = true
//    
//    }
//
    
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
