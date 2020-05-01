//
//  MovieDetailViewController.swift
//  Binge It, Baby
//
//  Created by Marissa Gonzales on 4/27/20.
//  Copyright © 2020 Joe Veverka. All rights reserved.
//

import UIKit

protocol AddMovieToWatchList {
    func movieWasAdded(_ movie: Movie)
}

class MovieDetailViewController: UIViewController {
    
    var movie: Movie? {
        didSet {
            if let _ = view {
                updateViews()
            }
        }
    }
//    let homePageController = HomePageController()
    var delegate: AddMovieToWatchList?
//    var delegate2: AddMovieToWatchList?
    
    @IBOutlet weak var behindImageView: UIView!
    @IBOutlet weak var movieDetailName: UILabel!
    @IBOutlet weak var movieDetailImage: UIImageView!
    @IBOutlet weak var castTextView: UITextView!
    @IBOutlet weak var synopsisTextView: UITextView!
    @IBOutlet weak var addToWatchlistButton: UIButton!
    
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        behindImageView.layer.masksToBounds = true
        behindImageView.layer.cornerRadius = behindImageView.bounds.width / 2
        behindImageView.backgroundColor = .purple
        movieDetailImage.layer.masksToBounds = true
        movieDetailImage.layer.borderWidth = 2
        movieDetailImage.layer.borderColor = #colorLiteral(red: 0.8175143481, green: 0.3119687745, blue: 0.8673537825, alpha: 1)
        movieDetailImage.layer.cornerRadius = movieDetailImage.bounds.width / 2
        updateViews()
    }
    
    @IBAction func addMovieToWatchlistButton(_ sender: UIButton) {
        
        guard let movie = movie else { return }
        
        let movieName = movie.name
        let movieImage = movie.image
        var movieStatus = movie.userIsWatching
        movieStatus = true
        
        let addedMovie = Movie(name: movieName, image: movieImage, userIsWatching: movieStatus)
        delegate?.movieWasAdded(addedMovie)
        showAlert()
    }
    
    private func updateViews() {
        
        guard let movie = movie else { return } 
        
        movieDetailImage.image = movie.image
        movieDetailName.textColor = .white
        movieDetailName.text = movie.name
        castTextView.textColor = .white
        castTextView.text = movie.cast.description
        castTextView.backgroundColor = .clear
        synopsisTextView.textColor = .white
        synopsisTextView.backgroundColor = .clear
        synopsisTextView.text = movie.synopsis
    }
    
    private func showAlert() {
        let alert = UIAlertController(title: "Your movie was added!", message: "Tap 'Ok' to continue", preferredStyle: .alert)
        alert.addAction(UIAlertAction(title: "Ok", style: .default) { (UIAlertAction) -> Void in
            self.dismiss(animated: true, completion: nil)})
        present(alert, animated: true)
    }
}
