//
//  PlanetsCollectionViewController.swift
//  Planets
//
//  Created by Sean Acres on 6/13/19.
//  Copyright © 2019 Lambda Inc. All rights reserved.
//

import UIKit

private let reuseIdentifier = "PlanetCell"

class PlanetsCollectionViewController: UICollectionViewController {

    // MARK: UICollectionViewDataSource

    override func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        // #warning Incomplete implementation, return the number of items
        return 1
    }

    override func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        let cell = collectionView.dequeueReusableCell(withReuseIdentifier: reuseIdentifier, for: indexPath)
    
        // Configure the cell
    
        return cell
    }
}
