//
//  Track.swift
//  lab-tunley
//
//  Created by Charlie Hieger on 12/2/22.
//

import Foundation

// TODO: Pt 1 - Create a Track model struct

struct Track: Decodable{
    let trackName: String
    let artistName: String
    let artworkUrl100: URL
    let previewUrl: URL

    // Detail properties
    let collectionName: String
    let primaryGenreName: String
    let releaseDate: Date
    let trackTimeMillis: Int
}

struct TracksResponse: Decodable {
    
    let results: [Track]
    
}




// TODO: Pt 1 - Create an extension with a mock tracks static var

extension Track {

    /// An array of mock tracks
//    static var mockTracks: [Track]  = [
//        Track(trackName: "Ice Cream",
//              artistName: "BLACKPINK & Selena Gomez",
//              artworkUrl100: URL(string:"https://is5-ssl.mzstatic.com/image/thumb/Music125/v4/c3/64/46/c364465f-6271-8aae-93a8-b9979d2befe5/20UMGIM82075.rgb.jpg/100x100bb.jpg")!,
//             collectionName: "The Album",
//             primaryGenreName: "K-Pop",
//              releaseDate: Date(),
//              trackTimeMillis: 157705),
//        Track(trackName: "Sour Candy",
//              artistName: "Lady Gaga & BLACKPINK",
//              artworkUrl100: URL(string: "https://is5-ssl.mzstatic.com/image/thumb/Music115/v4/5d/4d/f9/5d4df96a-e95e-2fe9-404a-5d570513762d/20UMGIM15390.rgb.jpg/100x100bb.jpg")!,
//              collectionName: "The Album",
//              primaryGenreName: "K-Pop",
//               releaseDate: Date(),
//               trackTimeMillis: 157705),
//        Track(trackName: "WHISTLE",
//              artistName: "BLACKPINK",
//              artworkUrl100: URL(string: "https://is2-ssl.mzstatic.com/image/thumb/Music125/v4/89/eb/82/89eb82a7-52ec-9e02-87e9-fcc0ac7e0377/BLACKPINK_SQUARE2-1.jpg/100x100bb.jpg")!,
//              collectionName: "The Album",
//              primaryGenreName: "K-Pop",
//               releaseDate: Date(),
//               trackTimeMillis: 157705)
//    ]

    // We can now access this array of mock tracks anywhere like this:
    // let tracks = Tracks.mockTracks
}

// MARK: Helper Methods
/// Converts milliseconds to mm:ss format
///  ex:  208643 -> "3:28"
///  ex:
func formattedTrackDuration(with milliseconds: Int) -> String {
    let (minutes, seconds) = milliseconds.quotientAndRemainder(dividingBy: 60 * 1000)
    let truncatedSeconds = seconds / 1000
    if truncatedSeconds >= 10 {
        return "\(minutes):\(truncatedSeconds)"
    } else {
        return "\(minutes):0\(truncatedSeconds)"
    }
}
