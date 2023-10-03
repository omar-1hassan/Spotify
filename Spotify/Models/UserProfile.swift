//
//  UserProfile.swift
//  Spotify
//
//  Created by mac on 24/09/2023.
//

import Foundation

struct UserProfile: Codable{
    
    let country: String
    let display_name: String
    let email: String
    let explicit_content: [String: Bool]
    let external_urls: [String: String]
    let id: String
    let product: String
    let images: [APIImage]
}


//{
//    country = EG;
//    "display_name" = "Omar Hassan";
//    email = "omarh99727@gmail.com";
//    "explicit_content" =     {
//        "filter_enabled" = 0;
//        "filter_locked" = 0;
//    };
//    "external_urls" =     {
//        spotify = "https://open.spotify.com/user/31hm3mqxqogtloo7ercho67g5ozy";
//    };
//    followers =     {
//        href = "<null>";
//        total = 0;
//    };
//    href = "https://api.spotify.com/v1/users/31hm3mqxqogtloo7ercho67g5ozy";
//    id = 31hm3mqxqogtloo7ercho67g5ozy;
//    images =     (
//                {
//            height = 64;
//            url = "https://i.scdn.co/image/ab67757000003b828f36aed099835a65b1e9204d";
//            width = 64;
//        },
//                {
//            height = 300;
//            url = "https://i.scdn.co/image/ab6775700000ee858f36aed099835a65b1e9204d";
//            width = 300;
//        }
//    );
//    product = free;
//    type = user;
//    uri = "spotify:user:31hm3mqxqogtloo7ercho67g5ozy";
//}
