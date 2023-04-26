//
// FoodPlaces.swift

//
//

import Foundation

struct CampusInfo: Decodable{
    let buildName: String
    let floorNum: String
    let artworkUrl100: URL
    let previewUrl: URL
    let latitude: Double
    let longitude: Double
    // Detail properties
    let Description: String
}

struct CampusResponse: Decodable {
    
    let results: [CampusInfo]
    
}


