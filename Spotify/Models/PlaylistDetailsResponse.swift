//
//  PlaylistDetailsResponse.swift
//  Spotify
//
//  Created by mac on 04/10/2023.
//

import Foundation

struct PlaylistDetailsResponse: Codable{
    let description: String
    let external_urls: [String: String]
    let id: String
    let images: [APIImage]
    let name: String
    let tracks: PlaylistTracksResponse
}

struct PlaylistTracksResponse: Codable{
    let items: [PlaylistItem]
}

struct PlaylistItem: Codable{
    let track: AudioTrack
}


//{
//    collaborative = 0;
//    description = "Gentle Ambient piano to help you fall asleep. ";
//    "external_urls" =     {
//        spotify = "https://open.spotify.com/playlist/37i9dQZF1DWZd79rJ6a7lp";
//    };
//    followers =     {
//        href = "<null>";
//        total = 5096959;
//    };
//    href = "https://api.spotify.com/v1/playlists/37i9dQZF1DWZd79rJ6a7lp";
//    id = 37i9dQZF1DWZd79rJ6a7lp;
//    images =     (
//                {
//            height = "<null>";
//            url = "https://i.scdn.co/image/ab67706f0000000381722192322800ae99c2ed06";
//            width = "<null>";
//        }
//    );
//    name = Sleep;
//    owner =     {
//        "display_name" = Spotify;
//        "external_urls" =         {
//            spotify = "https://open.spotify.com/user/spotify";
//        };
//        href = "https://api.spotify.com/v1/users/spotify";
//        id = spotify;
//        type = user;
//        uri = "spotify:user:spotify";
//    };
//    "primary_color" = "#ffffff";
//    public = 1;
//    "snapshot_id" = MCw4MWJkZjhkZmYzNDZmYmU2ZmEwNjI5MGUwNTY1NWU3OWE2Y2UzNzhh;
//    tracks =     {
//        href = "https://api.spotify.com/v1/playlists/37i9dQZF1DWZd79rJ6a7lp/tracks?offset=0&limit=100&locale=en-US,en;q=0.9";
//        items =
