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

    // Detail properties
    let Description: String
}

struct CampusResponse: Decodable {
    
    let results: [CampusInfo]
    
}


