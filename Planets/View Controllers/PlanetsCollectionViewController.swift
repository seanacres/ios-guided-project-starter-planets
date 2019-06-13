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

    let planetController = PlanetController()
    // MARK: UICollectionViewDataSource
    
    override func viewWillAppear(_ animated: Bool) {
        super.viewWillAppear(animated)
        collectionView.reloadData()
    }

    override func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        // #warning Incomplete implementation, return the number of items
        return planetController.planets.count
    }

    override func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        guard let cell = collectionView.dequeueReusableCell(withReuseIdentifier: reuseIdentifier, for: indexPath) as? PlanetCollectionViewCell else { return UICollectionViewCell() }
        
        let planet = planetController.planets[indexPath.item]
        cell.imageView.image = planet.image
        cell.nameLabel.text = planet.name
    
        return cell
    }
    
    @IBAction func unwindToPlanetsCollectionViewController(_ sender: UIStoryboardSegue) {}
}
