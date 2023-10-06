//
//  AllCategoriesResponse.swift
//  Spotify
//
//  Created by mac on 04/10/2023.
//

import Foundation

struct AllCategoriesResponse: Codable {
    let categories: Categories
}

struct Categories: Codable{
    let items: [Category]
}

struct Category: Codable{
    let id: String
    let name: String
    let icons: [APIImage]
}

//{
//    categories =     {
//        href = "https://api.spotify.com/v1/browse/categories?country=EG&offset=0&limit=2";
//        items =         (
//                        {
//                href = "https://api.spotify.com/v1/browse/categories/toplists";
//                icons =                 (
//                                        {
//                        height = 275;
//                        url = "https://t.scdn.co/media/derived/toplists_11160599e6a04ac5d6f2757f5511778f_0_0_275_275.jpg";
//                        width = 275;
//                    }
//                );
//                id = toplists;
//                name = "Top Lists";
//            },
//                        {
//                href = "https://api.spotify.com/v1/browse/categories/0JQ5DAqbMKFQ1UFISXj59F";
//                icons =                 (
//                                        {
//                        height = "<null>";
//                        url = "https://t.scdn.co/images/0c70e480b55c41858ebcc47061ebcb45.jpeg";
//                        width = "<null>";
//                    }
//                );
//                id = 0JQ5DAqbMKFQ1UFISXj59F;
//                name = Arab;
//            }
//        );
//        limit = 2;
//        next = "https://api.spotify.com/v1/browse/categories?country=EG&offset=2&limit=2";
//        offset = 0;
//        previous = "<null>";
//        total = 41;
//    };
//}
