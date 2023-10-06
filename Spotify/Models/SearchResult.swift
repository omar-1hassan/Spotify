//
//  SearchResult.swift
//  Spotify
//
//  Created by mac on 05/10/2023.
//

import Foundation

enum SearchResult {
    case artist(model: Artist)
    case album(model: Album)
    case track(model: AudioTrack)
    case playlist(model: Playlist)
}
