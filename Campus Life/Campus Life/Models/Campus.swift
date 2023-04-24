//
//  Campus.swift
// 
//

import Foundation


struct BuildSearchResponse: Decodable {
    let results: [Campus]
}

struct Campus: Decodable {
    let artworkUrl100: URL
}

