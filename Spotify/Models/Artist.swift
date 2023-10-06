//
//  Artist.swift
//  Spotify
//
//  Created by mac on 24/09/2023.
//

import Foundation


struct Artist: Codable {
    let id: String
    let name: String
    let type: String
    let images: [APIImage]?
    let external_urls: [String: String]
}
