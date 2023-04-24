//
//  AlbumsViewController.swift
//  lab-tunley
//
//  Created by swft on 3/10/23.
//

import UIKit
import Nuke


class FoodViewController: UIViewController, UICollectionViewDataSource {
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        Food.count
    }
    
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        // Get a collection view cell (based in the identifier you set in storyboard) and cast it to our custom AlbumCell
            let cell = collectionView.dequeueReusableCell(withReuseIdentifier: "AlbumCell", for: indexPath) as! FoodCell

            // Use the indexPath.item to index into the albums array to get the corresponding album
            let album = Food[indexPath.item]

            // Get the artwork image url
            let imageUrl = album.artworkUrl100

            // Set the image on the image view of the cell
            Nuke.loadImage(with: imageUrl, into: cell.albumImageView)

            return cell
    }
    
    
    
    @IBOutlet weak var collectionView: UICollectionView!
    var Food: [Campus] = []

    override func viewDidLoad() {
        super.viewDidLoad()
        collectionView.dataSource = self
        
        
        
        let layout = collectionView.collectionViewLayout as! UICollectionViewFlowLayout

        // The minimum spacing between adjacent cells (left / right, in vertical scrolling collection)
        // Set this to taste.
        layout.minimumInteritemSpacing = 4

        // The minimum spacing between adjacent cells (top / bottom, in vertical scrolling collection)
        // Set this to taste.
        layout.minimumLineSpacing = 4

        // Set this to however many columns you want to show in the collection.
        let numberOfColumns: CGFloat = 3

        // Calculate the width each cell need to be to fit the number of columns, taking into account the spacing between cells.
        let width = (collectionView.bounds.width - layout.minimumInteritemSpacing * (numberOfColumns - 1)) / numberOfColumns

        // Set the size that each tem/cell should display at
        layout.itemSize = CGSize(width: width, height: width)
        
        
        
        
        
        
        
        let url = URL(string: "https://raw.githubusercontent.com/Angel39706/CampusLife/main/csusbeats.json")!
        let request = URLRequest(url: url)

        let task = URLSession.shared.dataTask(with: request) { [weak self] data, response, error in

            // Handle any errors
            if let error = error {
                print("❌ Network error: \(error.localizedDescription)")
            }

            // Make sure we have data
            guard let data = data else {
                print("❌ Data is nil")
                return
            }

            let decoder = JSONDecoder()
            do {
                // Try to parse the response into our custom model
                let response = try decoder.decode(BuildSearchResponse.self, from: data)
                let foods = response.results
                print(foods)
                DispatchQueue.main.async {
                    self?.Food = foods
                    self?.collectionView.reloadData()
                }
            } catch {
                print(error.localizedDescription)
            }
        }

        // Initiate the network request
        task.resume()
        // Do any additional setup after loading the view.
    }
    

}
