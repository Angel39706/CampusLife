//
//  DetailViewController.swift
//  lab-tunley
//
//  Created by Charlie Hieger on 12/5/22.
//

import UIKit
import Nuke

class DetailViewController: UIViewController {

    @IBOutlet weak var buildImageView: UIImageView!
    @IBOutlet weak var buildNameLabel: UILabel!

    @IBOutlet weak var floorNumLabel: UILabel!
    @IBOutlet weak var descriptionLabel: UILabel!
   
    var campus: CampusInfo!

    override func viewDidLoad() {
        super.viewDidLoad()

        Nuke.loadImage(with: campus.artworkUrl100, into: buildImageView)
        buildNameLabel.text = campus.buildName
        floorNumLabel.text = campus.floorNum
        descriptionLabel.text = campus.Description
    }


}
