//
//  LbraryAlbumsResponse.swift
//  Spotify
//
//  Created by mac on 09/10/2023.
//

import Foundation

struct LibraryAlbumsResponse: Codable {
    let items: [SavedAlbum]
}

struct SavedAlbum: Codable{
    let added_at: String
    let album: Album
}
