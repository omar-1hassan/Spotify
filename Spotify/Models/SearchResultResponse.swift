//
//  SearchResultResponse.swift
//  Spotify
//
//  Created by mac on 05/10/2023.
//

import Foundation

struct SearchResultResponse: Codable{
    let albums: SearchAlbumResponse
    let artists: SearchArtistsAlbumResponse
    let playlists: SearchPlaylistsResponse
    let tracks: SearchTracksResponse
}

struct SearchAlbumResponse: Codable {
    let items: [Album]
}

struct SearchArtistsAlbumResponse: Codable {
    let items: [Artist]
}

struct SearchPlaylistsResponse: Codable {
    let items: [Playlist]
}

struct SearchTracksResponse: Codable {
    let items: [AudioTrack]
}

