//
//  RecommendationsResponse.swift
//  Spotify
//
//  Created by mac on 02/10/2023.
//

import Foundation

struct RecommendationsResponse: Codable {
    let tracks: [AudioTrack]
    
}




//tracks =     (
//            {
//        album =             {
//            "album_type" = SINGLE;
//            artists =                 (
//                                    {
//                    "external_urls" =                         {
//                        spotify = "https://open.spotify.com/artist/4nDoRrQiYLoBzwC5BhVJzF";
//                    };
//                    href = "https://api.spotify.com/v1/artists/4nDoRrQiYLoBzwC5BhVJzF";
//                    id = 4nDoRrQiYLoBzwC5BhVJzF;
//                    name = "Camila Cabello";
//                    type = artist;
//                    uri = "spotify:artist:4nDoRrQiYLoBzwC5BhVJzF";
//                }
//            );
//            "available_markets" =                 (
//                AR,
//                AU,
//                AT,
//                ET,
//                XK
//            );
//            "external_urls" =                 {
//                spotify = "https://open.spotify.com/album/3Eh8juJMtjYOS4ryAtMDFJ";
//            };
//            href = "https://api.spotify.com/v1/albums/3Eh8juJMtjYOS4ryAtMDFJ";
//            id = 3Eh8juJMtjYOS4ryAtMDFJ;
//            images =                 (
//                                    {
//                    height = 640;
//                    url = "https://i.scdn.co/image/ab67616d0000b273147a905ba006c3ed794f17fd";
//                    width = 640;
//                },
//                                    {
//                    height = 300;
//                    url = "https://i.scdn.co/image/ab67616d00001e02147a905ba006c3ed794f17fd";
//                    width = 300;
//                },
//                                    {
//                    height = 64;
//                    url = "https://i.scdn.co/image/ab67616d00004851147a905ba006c3ed794f17fd";
//                    width = 64;
//                }
//            );
//            name = "OMG (feat. Quavo)";
//            "release_date" = "2017-08-03";
//            "release_date_precision" = day;
//            "total_tracks" = 1;
//            type = album;
//            uri = "spotify:album:3Eh8juJMtjYOS4ryAtMDFJ";
//        };
//        artists =             (
//                            {
//                "external_urls" =                     {
//                    spotify = "https://open.spotify.com/artist/4nDoRrQiYLoBzwC5BhVJzF";
//                };
//                href = "https://api.spotify.com/v1/artists/4nDoRrQiYLoBzwC5BhVJzF";
//                id = 4nDoRrQiYLoBzwC5BhVJzF;
//                name = "Camila Cabello";
//                type = artist;
//                uri = "spotify:artist:4nDoRrQiYLoBzwC5BhVJzF";
//            },
//                            {
//                "external_urls" =                     {
//                    spotify = "https://open.spotify.com/artist/0VRj0yCOv2FXJNP47XQnx5";
//                };
//                href = "https://api.spotify.com/v1/artists/0VRj0yCOv2FXJNP47XQnx5";
//                id = 0VRj0yCOv2FXJNP47XQnx5;
//                name = Quavo;
//                type = artist;
//                uri = "spotify:artist:0VRj0yCOv2FXJNP47XQnx5";
//            }
//        );
//        "available_markets" =             (
//            AR,
//            ET,
//            XK
//        );
//        "disc_number" = 1;
//        "duration_ms" = 228893;
//        explicit = 0;
//        "external_ids" =             {
//            isrc = USSM11706904;
//        };
//        "external_urls" =             {
//            spotify = "https://open.spotify.com/track/4xBjsLUSjcx2h7PcRikpQp";
//        };
//        href = "https://api.spotify.com/v1/tracks/4xBjsLUSjcx2h7PcRikpQp";
//        id = 4xBjsLUSjcx2h7PcRikpQp;
//        "is_local" = 0;
//        name = "OMG (feat. Quavo)";
//        popularity = 60;
//        "preview_url" = "https://p.scdn.co/mp3-preview/f197464a3ec04a490ef25feacf7d61205ccb9c84?cid=3f0593f466114fc19a5596eb114fc96f";
//        "track_number" = 1;
//        type = track;
//        uri = "spotify:track:4xBjsLUSjcx2h7PcRikpQp";
//    },
//            {
//        album =             {
//            "album_type" = ALBUM;
//            artists =                 (
//                                    {
//                    "external_urls" =                         {
//                        spotify = "https://open.spotify.com/artist/3V7U1x0TRBn7spzHDQiZhi";
//                    };
//                    href = "https://api.spotify.com/v1/artists/3V7U1x0TRBn7spzHDQiZhi";
//                    id = 3V7U1x0TRBn7spzHDQiZhi;
//                    name = "Jeito Moleque";
//                    type = artist;
//                    uri = "spotify:artist:3V7U1x0TRBn7spzHDQiZhi";
//                }
//            );
//            "available_markets" =                 (
//                AR,
//                AU,
//                AT,
//                XK
//            );
//            "external_urls" =                 {
//                spotify = "https://open.spotify.com/album/3Z765QawqJAPh4OQUBTwDL";
//            };
//            href = "https://api.spotify.com/v1/albums/3Z765QawqJAPh4OQUBTwDL";
//            id = 3Z765QawqJAPh4OQUBTwDL;
//            images =                 (
//                                    {
//                    height = 640;
//                    url = "https://i.scdn.co/image/ab67616d0000b27362d741f8e00ef7b0fb7279a3";
//                    width = 640;
//                },
//                                    {
//                    height = 300;
//                    url = "https://i.scdn.co/image/ab67616d00001e0262d741f8e00ef7b0fb7279a3";
//                    width = 300;
//                },
//                                    {
//                    height = 64;
//                    url = "https://i.scdn.co/image/ab67616d0000485162d741f8e00ef7b0fb7279a3";
//                    width = 64;
//                }
//            );
//            name = "Viva Vida";
//            "release_date" = "2012-08-10";
//            "release_date_precision" = day;
//            "total_tracks" = 15;
//            type = album;
//            uri = "spotify:album:3Z765QawqJAPh4OQUBTwDL";
//        };
//        artists =             (
//                            {
//                "external_urls" =                     {
//                    spotify = "https://open.spotify.com/artist/3V7U1x0TRBn7spzHDQiZhi";
//                };
//                href = "https://api.spotify.com/v1/artists/3V7U1x0TRBn7spzHDQiZhi";
//                id = 3V7U1x0TRBn7spzHDQiZhi;
//                name = "Jeito Moleque";
//                type = artist;
//                uri = "spotify:artist:3V7U1x0TRBn7spzHDQiZhi";
//            }
//        );
//        "available_markets" =             (
//            AR,
//            AU,
//            LY,
//            TJ,
//            VE,
//            ET,
//            XK
//        );
//        "disc_number" = 1;
//        "duration_ms" = 194666;
//        explicit = 0;
//        "external_ids" =             {
//            isrc = BRIAW1200044;
//        };
//        "external_urls" =             {
//            spotify = "https://open.spotify.com/track/6NKpbV9eWl9skmLmWjVqNx";
//        };
//        href = "https://api.spotify.com/v1/tracks/6NKpbV9eWl9skmLmWjVqNx";
//        id = 6NKpbV9eWl9skmLmWjVqNx;
//        "is_local" = 0;
//        name = "Ninho De Paz";
//        popularity = 8;
//        "preview_url" = "https://p.scdn.co/mp3-preview/9d444e084d960aa0c3249811ceaa0554a2bd6675?cid=3f0593f466114fc19a5596eb114fc96f";
//        "track_number" = 3;
//        type = track;
//        uri = "spotify:track:6NKpbV9eWl9skmLmWjVqNx";
//    }
//);
//}
