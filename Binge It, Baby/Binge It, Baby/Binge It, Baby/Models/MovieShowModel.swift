//
//  MovieShowModel.swift
//  Binge It, Baby
//
//  Created by Marissa Gonzales on 4/24/20.
//  Copyright © 2020 Joe Veverka. All rights reserved.
//

import Foundation
import UIKit

struct Movie { 
    
    var name: String
    var genre: String = ""
    var releasedYear: Int = 0
    var rating: String? = ""
    var cast: [String] = []
    var userIsWatching: Bool = false
    var image: UIImage
    var synopsis: String = ""
}

// Custom Initizlizer
extension Movie {
    init(name: String, image: UIImage, userIsWatching: Bool) {
        self.name = name
        self.image = image
        self.userIsWatching = userIsWatching
    }
}
