//
//  NewReleasesResponse.swift
//  Spotify
//
//  Created by mac on 02/10/2023.
//

import Foundation

struct NewReleasesResponse: Codable {
    let albums: AlbumsResponse
}

struct AlbumsResponse: Codable {
    let items: [Album]
}

struct Album: Codable {
    let album_type: String
    let available_markets: [String]
    let id: String
    var images: [APIImage]
    let name: String
    let release_date: String
    let total_tracks: Int
    let artists: [Artist]
}








//{
//    albums =     {
//        href = "https://api.spotify.com/v1/browse/new-releases?country=EG&locale=en-US%2Cen%3Bq%3D0.9&offset=0&limit=2";
//        items =         (
//                        {
//                "album_type" = album;
//                artists =                 (
//                                        {
//                        "external_urls" =                         {
//                            spotify = "https://open.spotify.com/artist/59wfkuBoNyhDMQGCljbUbA";
//                        };
//                        href = "https://api.spotify.com/v1/artists/59wfkuBoNyhDMQGCljbUbA";
//                        id = 59wfkuBoNyhDMQGCljbUbA;
//                        name = Diddy;
//                        type = artist;
//                        uri = "spotify:artist:59wfkuBoNyhDMQGCljbUbA";
//                    }
//                );
//                "available_markets" =                 (
//                    AR,
//                    AU,
//                    TG,
//                    UZ,
//                    ZW,
//
//                    XK
//                );
//                "external_urls" =                 {
//                    spotify = "https://open.spotify.com/album/1Z67w2JtLfO8D2dP0Mwpy1";
//                };
//                href = "https://api.spotify.com/v1/albums/1Z67w2JtLfO8D2dP0Mwpy1";
//                id = 1Z67w2JtLfO8D2dP0Mwpy1;
//                images =                 (
//                                        {
//                        height = 640;
//                        url = "https://i.scdn.co/image/ab67616d0000b273ac6a6549a4cacee199916f0b";
//                        width = 640;
//                    },
//                                        {
//                        height = 300;
//                        url = "https://i.scdn.co/image/ab67616d00001e02ac6a6549a4cacee199916f0b";
//                        width = 300;
//                    },
//                                        {
//                        height = 64;
//                        url = "https://i.scdn.co/image/ab67616d00004851ac6a6549a4cacee199916f0b";
//                        width = 64;
//                    }
//                );
//                name = "The Love Album: Off The Grid";
//                "release_date" = "2023-09-15";
//                "release_date_precision" = day;
//                "total_tracks" = 23;
//                type = album;
//                uri = "spotify:album:1Z67w2JtLfO8D2dP0Mwpy1";
//            },
//                        {
//                "album_type" = single;
//                artists =                 (
//                                        {
//                        "external_urls" =                         {
//                            spotify = "https://open.spotify.com/artist/5WUlDfRSoLAfcVSX1WnrxN";
//                        };
//                        href = "https://api.spotify.com/v1/artists/5WUlDfRSoLAfcVSX1WnrxN";
//                        id = 5WUlDfRSoLAfcVSX1WnrxN;
//                        name = Sia;
//                        type = artist;
//                        uri = "spotify:artist:5WUlDfRSoLAfcVSX1WnrxN";
//                    }
//                );
//                "available_markets" =                 (
//                    AR,
//                    AU,
//                    AT,
//                    BE,
//                    BO,
//                    ET,
//                    XK
//                );
//                "external_urls" =                 {
//                    spotify = "https://open.spotify.com/album/4jLwuz6VaUKuIiS799cU2z";
//                };
//                href = "https://api.spotify.com/v1/albums/4jLwuz6VaUKuIiS799cU2z";
//                id = 4jLwuz6VaUKuIiS799cU2z;
//                images =                 (
//                                        {
//                        height = 640;
//                        url = "https://i.scdn.co/image/ab67616d0000b2730df5de7712f0db14d84a4f7e";
//                        width = 640;
//                    },
//                                        {
//                        height = 300;
//                        url = "https://i.scdn.co/image/ab67616d00001e020df5de7712f0db14d84a4f7e";
//                        width = 300;
//                    },
//                                        {
//                        height = 64;
//                        url = "https://i.scdn.co/image/ab67616d000048510df5de7712f0db14d84a4f7e";
//                        width = 64;
//                    }
//                );
//                name = "Gimme Love";
//                "release_date" = "2023-09-13";
//                "release_date_precision" = day;
//                "total_tracks" = 1;
//                type = album;
//                uri = "spotify:album:4jLwuz6VaUKuIiS799cU2z";
//            }
//        );
//        limit = 2;
//        next = "https://api.spotify.com/v1/browse/new-releases?country=EG&locale=en-US%2Cen%3Bq%3D0.9&offset=2&limit=2";
//        offset = 0;
//        previous = "<null>";
//        total = 100;
//    };
//}
