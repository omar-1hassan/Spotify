//
//  AlbumDetailsResponse.swift
//  Spotify
//
//  Created by mac on 03/10/2023.
//

import Foundation

struct AlbumDetailsResponse: Codable{
    let album_type: String
    let artists: [Artist]
    let available_markets: [String]
    let external_urls: [String: String]
    let id: String
    let images: [APIImage]
    let label: String
    let name: String
    let tracks: TracksResponse
    
}

struct TracksResponse: Codable{
    let items: [AudioTrack]
}



//{
//    "album_type" = single;
//    artists =     (
//                {
//            "external_urls" =             {
//                spotify = "https://open.spotify.com/artist/5cj0lLjcoR7YOSnhnX0Po5";
//            };
//            href = "https://api.spotify.com/v1/artists/5cj0lLjcoR7YOSnhnX0Po5";
//            id = 5cj0lLjcoR7YOSnhnX0Po5;
//            name = "Doja Cat";
//            type = artist;
//            uri = "spotify:artist:5cj0lLjcoR7YOSnhnX0Po5";
//        }
//    );
//    "available_markets" =     (
//        AR,
//        AU,
//        AT,
//    );
//    copyrights =     (
//                {
//            text = "(P) 2023 Kemosabe Records/RCA Records";
//            type = P;
//        }
//    );
//    "external_ids" =     {
//        upc = 196871399302;
//    };
//    "external_urls" =     {
//        spotify = "https://open.spotify.com/album/7iduRgQGVmm0Thy4v734Py";
//    };
//    genres =     (
//    );
//    href = "https://api.spotify.com/v1/albums/7iduRgQGVmm0Thy4v734Py";
//    id = 7iduRgQGVmm0Thy4v734Py;
//    images =     (
//                {
//            height = 640;
//            url = "https://i.scdn.co/image/ab67616d0000b273d5fe37ec6d8f78ffc5437859";
//            width = 640;
//        },
//                {
//            height = 300;
//            url = "https://i.scdn.co/image/ab67616d00001e02d5fe37ec6d8f78ffc5437859";
//            width = 300;
//        },
//                {
//            height = 64;
//            url = "https://i.scdn.co/image/ab67616d00004851d5fe37ec6d8f78ffc5437859";
//            width = 64;
//        }
//    );
//    label = "Kemosabe Records/RCA Records";
//    name = Demons;
//    popularity = 72;
//    "release_date" = "2023-08-31";
//    "release_date_precision" = day;
//    "total_tracks" = 1;
//    tracks =     {
//        href = "https://api.spotify.com/v1/albums/7iduRgQGVmm0Thy4v734Py/tracks?offset=0&limit=50&locale=en-US,en;q=0.9";
//        items =         (
//                        {
//                artists =                 (
//                                        {
//                        "external_urls" =                         {
//                            spotify = "https://open.spotify.com/artist/5cj0lLjcoR7YOSnhnX0Po5";
//                        };
//                        href = "https://api.spotify.com/v1/artists/5cj0lLjcoR7YOSnhnX0Po5";
//                        id = 5cj0lLjcoR7YOSnhnX0Po5;
//                        name = "Doja Cat";
//                        type = artist;
//                        uri = "spotify:artist:5cj0lLjcoR7YOSnhnX0Po5";
//                    }
//                );
//                "available_markets" =                 (
//                    AR,
//                    AU,
//                    AT
//                    XK
//                );
//                "disc_number" = 1;
//                "duration_ms" = 195573;
//                explicit = 1;
//                "external_urls" =                 {
//                    spotify = "https://open.spotify.com/track/1xemKSmCnH59ze3KX5wwgH";
//                };
//                href = "https://api.spotify.com/v1/tracks/1xemKSmCnH59ze3KX5wwgH";
//                id = 1xemKSmCnH59ze3KX5wwgH;
//                "is_local" = 0;
//                name = Demons;
//                "preview_url" = "https://p.scdn.co/mp3-preview/915faa239507bce67dc5fdae245376eaff690a85?cid=3f0593f466114fc19a5596eb114fc96f";
//                "track_number" = 1;
//                type = track;
//                uri = "spotify:track:1xemKSmCnH59ze3KX5wwgH";
//            }
//        );
//        limit = 50;
//        next = "<null>";
//        offset = 0;
//        previous = "<null>";
//        total = 1;
//    };
//    type = album;
//    uri = "spotify:album:7iduRgQGVmm0Thy4v734Py";
//}
