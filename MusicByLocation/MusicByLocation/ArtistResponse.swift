//
//  ArtistResponse.swift
//  MusicByLocation
//
//  Created by Hassall, Oscar (HWTA) on 04/03/2020.
//  Copyright © 2020 Hassall, Oscar (HWTA). All rights reserved.
//

import Foundation

struct ArtistResponse: Codable {
    var count: Int
    var results: [Artist]
    
    private enum CodingKeys: String, CodingKey {
        case count = "resultCount"
        case results
    }
}
