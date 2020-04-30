//
//  HeaderCollectionReusableView.swift
//  Binge It, Baby
//
//  Created by Marissa Gonzales on 4/30/20.
//  Copyright © 2020 Joe Veverka. All rights reserved.
//

import UIKit



class HeaderCollectionReusableView: UICollectionReusableView {
    
    
    @IBOutlet weak var headerViewImage: UIImageView!
    @IBOutlet weak var headerViewLabel: UILabel!
}

extension HeaderCollectionReusableView: UICollectionViewDataSource {
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        
    }
    
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        <#code#>
    }
    
    
    func collectionView(_ collectionView: UICollectionView, viewForSupplementaryElementOfKind kind: String, at indexPath: IndexPath) -> UICollectionReusableView {
        switch kind {
            
        case UICollectionView.elementKindSectionHeader:
            guard case let collectionView.dequeueReusableSupplementaryView(ofKind: kind, withReuseIdentifier: "headerView", for: indexPath) is HeaderCollectionReusableView else { fatalError("Invalid view type")
            }
            
         
            
        }
    }
}
