//
//  CarouselViewCell.swift
//  Binge It, Baby
//
//  Created by Marissa Gonzales on 4/30/20.
//  Copyright © 2020 Joe Veverka. All rights reserved.
//

import Foundation
import UIKit

class CarouselCollectionViewCell: UICollectionViewCell {
    // Outlets
    @IBOutlet weak var featuredImageView: UIImageView!
    @IBOutlet weak var backgroundColorView: UIView!
    @IBOutlet weak var movieTitleLabel: UILabel!
    
    var movie: Movie? {
        didSet {
            updateUI()
        }
    }
    func updateUI() {
        if let movie = movie {
            featuredImageView.image = movie.image
            movieTitleLabel.text = movie.name }
        else {
            featuredImageView.image = nil
            movieTitleLabel.text = nil
        }
        // cell customization
        backgroundColorView.layer.cornerRadius = 10.0
        backgroundColorView.layer.masksToBounds = true
        featuredImageView.layer.cornerRadius = 10.0
        featuredImageView.layer.masksToBounds = true
    }
}
