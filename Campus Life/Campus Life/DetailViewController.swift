//
//  DetailViewController.swift
//  lab-tunley
//
//  Created by Charlie Hieger on 12/5/22.
//

import UIKit
import Nuke
import MapKit

class DetailViewController: UIViewController {

    @IBOutlet weak var buildImageView: UIImageView!
    @IBOutlet weak var buildNameLabel: UILabel!

    @IBOutlet weak var floorNumLabel: UILabel!
    @IBOutlet weak var descriptionLabel: UILabel!
   
    @IBOutlet weak var mapVIew: MKMapView!
    var campus: CampusInfo!

    //34.182938972336814, -117.32066813058997
    override func viewDidLoad() {
        super.viewDidLoad()

        Nuke.loadImage(with: campus.artworkUrl100, into: buildImageView)
        buildNameLabel.text = campus.buildName
        floorNumLabel.text = campus.floorNum
        descriptionLabel.text = campus.Description
        
        
        let annontation = MKPointAnnotation()
        annontation.coordinate = CLLocationCoordinate2D(latitude: 34.18051556837261, longitude: -117.32409698330449
)//34.183577750293956, -117.3208830676805
        //34.18386176069037, -117.3216984586763
        annontation.title = "University Hall"
        mapVIew.addAnnotation(annontation)
        mapVIew.overrideUserInterfaceStyle = .dark
        let region = MKCoordinateRegion(center:annontation.coordinate,latitudinalMeters: 500,longitudinalMeters: 500)
        mapVIew.setRegion(region, animated: true)
    }

    

}

