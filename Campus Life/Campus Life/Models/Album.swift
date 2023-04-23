//
//  Album.swift
//  lab-tunley
//
//  Created by swft on 3/10/23.
//

import Foundation


struct AlbumSearchResponse: Decodable {
    let results: [Album]
}

struct Album: Decodable {
    let artworkUrl100: URL
}
