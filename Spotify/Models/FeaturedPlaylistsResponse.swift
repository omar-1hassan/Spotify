//
//  FeaturedPlaylistsResponse.swift
//  Spotify
//
//  Created by mac on 02/10/2023.
//

import Foundation

struct FeaturedPlaylistsResponse: Codable {
    let playlists: PlaylistResponse
}

struct CategoryPlaylistsResponse: Codable {
    let playlists: PlaylistResponse
}

struct PlaylistResponse: Codable {
    let items: [Playlist]
}



struct User: Codable{
    let display_name: String
    let external_urls:[String: String]
    let id: String
}



//{
//    message = "Morning rhythm";
//    playlists =     {
//        href = "https://api.spotify.com/v1/browse/featured-playlists?country=EG&timestamp=2023-10-02T08%3A50%3A56&offset=0&limit=50";
//        items =         (
//                        {
//                collaborative = 0;
//                description = "\U0623\U0642\U0648\U0649 \U0623\U063a\U0627\U0646\U064a \U0627\U0644\U0635\U064a\U0641 \Ud83d\Udd25\Ud83c\Udfd6\Ufe0f\Ud83c\Udf4d \U0643\U0648\U0641\U0631: <a href=\"https://open.spotify.com/artist/6bb9VI1PpPTEmdgcgjTppX?si=RkwcpP1mTNy2fTRWU_z0kQ\"> \U062d\U0645\U0627\U0642\U064a\U00a0 </a>";
//                "external_urls" =                 {
//                    spotify = "https://open.spotify.com/playlist/37i9dQZF1DX3BDF0kuudi6";
//                };
//                href = "https://api.spotify.com/v1/playlists/37i9dQZF1DX3BDF0kuudi6";
//                id = 37i9dQZF1DX3BDF0kuudi6;
//                images =                 (
//                                        {
//                        height = "<null>";
//                        url = "https://i.scdn.co/image/ab67706f0000000332db410ba877f49971c8c848";
//                        width = "<null>";
//                    }
//                );
//                name = "Hits \U0635\U064a\U0641";
//                owner =                 {
//                    "display_name" = Spotify;
//                    "external_urls" =                     {
//                        spotify = "https://open.spotify.com/user/spotify";
//                    };
//                    href = "https://api.spotify.com/v1/users/spotify";
//                    id = spotify;
//                    type = user;
//                    uri = "spotify:user:spotify";
//                };
//                "primary_color" = "<null>";
//                public = "<null>";
//                "snapshot_id" = MTY5MjI5ODY2MSwwMDAwMDAwMGQ1YzRlZWQyNDljZjM4N2FmN2VhNWQ2Y2I5NWUxZGEz;
//                tracks =                 {
//                    href = "https://api.spotify.com/v1/playlists/37i9dQZF1DX3BDF0kuudi6/tracks";
//                    total = 50;
//                };
//                type = playlist;
//                uri = "spotify:playlist:37i9dQZF1DX3BDF0kuudi6";
//            },
//                        {
//                collaborative = 0;
//                description = "\U0623\U0641\U0636\U0644 \U0627\U0644\U0623\U063a\U0627\U0646\U064a \U0627\U0644\U0645\U0635\U0631\U064a\U0629 \U0627\U0644\U0622\U0646 \U0645\U0646 \U0642\U0644\U0628 \U0645\U0635\U0631 \U0625\U0644\U0649 \U0627\U0644\U0639\U0627\U0644\U0645\Ud83d\Udd25\Ud83d\Udd1d. \U0627\U0644\U063a\U0644\U0627\U0641: <a href=\"https://open.spotify.com/artist/7MGFOSQK8O3im8YslR3DLB?si=N6rI_XQeRB2Z3mA9xRoohQ\">  \U0645\U062d\U0645\U0648\U062f \U0627\U0644\U0639\U0633\U064a\U0644\U064a </a>";
//                "external_urls" =                 {
//                    spotify = "https://open.spotify.com/playlist/37i9dQZF1DXd3AhRYJnfcl";
//                };
//                href = "https://api.spotify.com/v1/playlists/37i9dQZF1DXd3AhRYJnfcl";
//                id = 37i9dQZF1DXd3AhRYJnfcl;
//                images =                 (
//                                        {
//                        height = "<null>";
//                        url = "https://i.scdn.co/image/ab67706f000000036b489b705b352b89cb237c9b";
//                        width = "<null>";
//                    }
//                );
//                name = "\U0627\U0644\U062a\U0648\U0628";
//                owner =                 {
//                    "display_name" = Spotify;
//                    "external_urls" =                     {
//                        spotify = "https://open.spotify.com/user/spotify";
//                    };
//                    href = "https://api.spotify.com/v1/users/spotify";
//                    id = spotify;
//                    type = user;
//                    uri = "spotify:user:spotify";
//                };
//                "primary_color" = "<null>";
//                public = "<null>";
//                "snapshot_id" = MTY5NTcxOTQ3NSwwMDAwMDAwMDc4NzBlOGZiNWZkNWY0YzVhNTg0NTQyZDRjYTZkZTc4;
//                tracks =                 {
//                    href = "https://api.spotify.com/v1/playlists/37i9dQZF1DXd3AhRYJnfcl/tracks";
//                    total = 50;
//                };
//                type = playlist;
//                uri = "spotify:playlist:37i9dQZF1DXd3AhRYJnfcl";
//            },
//                        {
//                collaborative = 0;
//                description = "\U0627\U0633\U062a\U0645\U062a\U0639 \U0628\U0627\U0644\U0623\U063a\U0627\U0646\U064a \U0648\U0627\U0646\U0633\U0649 \U0627\U0644\U0632\U062d\U0645\U0629! \Ud83c\Udfb6\Ud83d\Ude97";
//                "external_urls" =                 {
//                    spotify = "https://open.spotify.com/playlist/37i9dQZF1DXdcjKKBPqh1t";
//                };
//                href = "https://api.spotify.com/v1/playlists/37i9dQZF1DXdcjKKBPqh1t";
//                id = 37i9dQZF1DXdcjKKBPqh1t;
//                images =                 (
//                                        {
//                        height = "<null>";
//                        url = "https://i.scdn.co/image/ab67706f00000003201f7fbd3864d4cc0ffefd50";
//                        width = "<null>";
//                    }
//                );
//                name = " \U0645\U0639\U0627\U0643 \U0641\U064a \U0627\U0644\U0632\U062d\U0645\U0647";
//                owner =                 {
//                    "display_name" = Spotify;
//                    "external_urls" =                     {
//                        spotify = "https://open.spotify.com/user/spotify";
//                    };
//                    href = "https://api.spotify.com/v1/users/spotify";
//                    id = spotify;
//                    type = user;
//                    uri = "spotify:user:spotify";
//                };
//                "primary_color" = "<null>";
//                public = "<null>";
//                "snapshot_id" = MTY5NTYxNzkyOSwwMDAwMDAwMGFhYzBlNWYxMzBjNGY5YTM4NmUxYWExNmU5NTliMDFl;
//                tracks =                 {
//                    href = "https://api.spotify.com/v1/playlists/37i9dQZF1DXdcjKKBPqh1t/tracks";
//                    total = 75;
//                };
//                type = playlist;
//                uri = "spotify:playlist:37i9dQZF1DXdcjKKBPqh1t";
//            },
//                        {
//                collaborative = 0;
//                description = "Find out the hottest tracks in Egypt. Cover: <a href=\"https://open.spotify.com/artist/5D2ui1KD49TfyCDb35zf5V?si=3c8L9cxsTHe_znWM47slUQ\">  Ahmed Saad </a>, <a href=\"https://open.spotify.com/artist/2lMy93l58wzjh8DepKL814?si=zzrldyxGQoWhsAIrnNhSfw\">  Ruby </a>";
//                "external_urls" =                 {
//                    spotify = "https://open.spotify.com/playlist/37i9dQZF1DX50MDbDwt4w8";
//                };
//                href = "https://api.spotify.com/v1/playlists/37i9dQZF1DX50MDbDwt4w8";
//                id = 37i9dQZF1DX50MDbDwt4w8;
//                images =                 (
//                                        {
//                        height = "<null>";
//                        url = "https://i.scdn.co/image/ab67706f00000003cd021d98a75f1bd54cdb3611";
//                        width = "<null>";
//                    }
//                );
//                name = "Hot Hits Egypt";
//                owner =                 {
//                    "display_name" = Spotify;
//                    "external_urls" =                     {
//                        spotify = "https://open.spotify.com/user/spotify";
//                    };
//                    href = "https://api.spotify.com/v1/users/spotify";
//                    id = spotify;
//                    type = user;
//                    uri = "spotify:user:spotify";
//                };
//                "primary_color" = "<null>";
//                public = "<null>";
//                "snapshot_id" = MTY5NTM0Mjg3OSwwMDAwMDAwMGEyNmM4YTMzNzI1NTM0OTFiZTQ1MzQ2NmFlOWFhMWZl;
//                tracks =                 {
//                    href = "https://api.spotify.com/v1/playlists/37i9dQZF1DX50MDbDwt4w8/tracks";
//                    total = 50;
//                };
//                type = playlist;
//                uri = "spotify:playlist:37i9dQZF1DX50MDbDwt4w8";
//            },
//                        {
//                collaborative = 0;
//                description = "The biggest Arabic hits all in one place. Cover:  <a href=\"https://open.spotify.com/artist/2YquYFTCdzTnrcxZzzrNbj?si=bVu-Pkk3RrCrg4aLfohm4w\">Majid Almohandis</a>\n\n";
//                "external_urls" =                 {
//                    spotify = "https://open.spotify.com/playlist/37i9dQZF1DX5cO1uP1XC1g";
//                };
//                href = "https://api.spotify.com/v1/playlists/37i9dQZF1DX5cO1uP1XC1g";
//                id = 37i9dQZF1DX5cO1uP1XC1g;
//                images =                 (
//                                        {
//                        height = "<null>";
//                        url = "https://i.scdn.co/image/ab67706f000000037122e0a91ea139ae8856ba51";
//                        width = "<null>";
//                    }
//                );
//                name = "Yalla ";
//                owner =                 {
//                    "display_name" = Spotify;
//                    "external_urls" =                     {
//                        spotify = "https://open.spotify.com/user/spotify";
//                    };
//                    href = "https://api.spotify.com/v1/users/spotify";
//                    id = spotify;
//                    type = user;
//                    uri = "spotify:user:spotify";
//                };
//                "primary_color" = "<null>";
//                public = "<null>";
//                "snapshot_id" = MTY5NjAzMTkyNSwwMDAwMDAwMGQ2NjdiYzM4ZmI0YWQ4ZWRiMTc1YjBmZDhhZGQ0OGQ0;
//                tracks =                 {
//                    href = "https://api.spotify.com/v1/playlists/37i9dQZF1DX5cO1uP1XC1g/tracks";
//                    total = 44;
//                };
//                type = playlist;
//                uri = "spotify:playlist:37i9dQZF1DX5cO1uP1XC1g";
//            },
//                        {
//                collaborative = 0;
//                description = "Stay up to date with the freshest Sharqi releases. Cover: AL SHAMI";
//                "external_urls" =                 {
//                    spotify = "https://open.spotify.com/playlist/37i9dQZF1DX0ysO3y1BFXN";
//                };
//                href = "https://api.spotify.com/v1/playlists/37i9dQZF1DX0ysO3y1BFXN";
//                id = 37i9dQZF1DX0ysO3y1BFXN;
//                images =                 (
//                                        {
//                        height = "<null>";
//                        url = "https://i.scdn.co/image/ab67706f00000003f26aedc3fcd182a1a8a6baf6";
//                        width = "<null>";
//                    }
//                );
//                name = "Fresh Sharqi";
//                owner =                 {
//                    "display_name" = Spotify;
//                    "external_urls" =                     {
//                        spotify = "https://open.spotify.com/user/spotify";
//                    };
//                    href = "https://api.spotify.com/v1/users/spotify";
//                    id = spotify;
//                    type = user;
//                    uri = "spotify:user:spotify";
//                };
//                "primary_color" = "<null>";
//                public = "<null>";
//                "snapshot_id" = MTY5NTk1NDAyNSwwMDAwMDAwMGE1YmM1YmIzZmMwNDU4Yzg1Yzc1NmE0NzcxMmIwOTY4;
//                tracks =                 {
//                    href = "https://api.spotify.com/v1/playlists/37i9dQZF1DX0ysO3y1BFXN/tracks";
//                    total = 50;
//                };
//                type = playlist;
//                uri = "spotify:playlist:37i9dQZF1DX0ysO3y1BFXN";
//            },
//                        {
//                collaborative = 0;
//                description = "Global crossovers by/with Arab artists. Cover: Faouzia ";
//                "external_urls" =                 {
//                    spotify = "https://open.spotify.com/playlist/37i9dQZF1DWWkrGNlIHxPl";
//                };
//                href = "https://api.spotify.com/v1/playlists/37i9dQZF1DWWkrGNlIHxPl";
//                id = 37i9dQZF1DWWkrGNlIHxPl;
//                images =                 (
//                                        {
//                        height = "<null>";
//                        url = "https://i.scdn.co/image/ab67706f00000003a6d8d92567efcba48fa1e323";
//                        width = "<null>";
//                    }
//                );
//                name = "Arab X";
//                owner =                 {
//                    "display_name" = Spotify;
//                    "external_urls" =                     {
//                        spotify = "https://open.spotify.com/user/spotify";
//                    };
//                    href = "https://api.spotify.com/v1/users/spotify";
//                    id = spotify;
//                    type = user;
//                    uri = "spotify:user:spotify";
//                };
//                "primary_color" = "<null>";
//                public = "<null>";
//                "snapshot_id" = MTY5NTk1NTEwMSwwMDAwMDAwMGI3MmM1N2EwMDgyZjRiNWQwNDU2MTdhMmFjMDkzOWRh;
//                tracks =                 {
//                    href = "https://api.spotify.com/v1/playlists/37i9dQZF1DWWkrGNlIHxPl/tracks";
//                    total = 50;
//                };
//                type = playlist;
//                uri = "spotify:playlist:37i9dQZF1DWWkrGNlIHxPl";
//            },
//                        {
//                collaborative = 0;
//                description = "\U0623\U062c\U0645\U062f \U0627\U0644\U0645\U0647\U0631\U062c\U0627\U0646\U0627\U062a \U0641\U064a \U0645\U0635\U0631\Ud83d\Udd25 \n \U0643\U0648\U0641\U0631: <a href=\"https://open.spotify.com/artist/6Ss3HQTUk6PeyD1a0IV6RB?si=5pOYTLVwR4uoTuzhcAmH5Q\"> \U0643\U0631\U064a\U0645 \U0643\U0631\U0633\U062a\U064a\U0627\U0646\U0648 </a> ";
//                "external_urls" =                 {
//                    spotify = "https://open.spotify.com/playlist/37i9dQZF1DX4qF0846GNk8";
//                };
//                href = "https://api.spotify.com/v1/playlists/37i9dQZF1DX4qF0846GNk8";
//                id = 37i9dQZF1DX4qF0846GNk8;
//                images =                 (
//                                        {
//                        height = "<null>";
//                        url = "https://i.scdn.co/image/ab67706f00000003853f2bc635817bcd70cb451e";
//                        width = "<null>";
//                    }
//                );
//                name = "\U0623\U0642\U0648\U0649 \U0627\U0644\U0645\U0647\U0631\U062c\U0627\U0646\U0627\U062a";
//                owner =                 {
//                    "display_name" = Spotify;
//                    "external_urls" =                     {
//                        spotify = "https://open.spotify.com/user/spotify";
//                    };
//                    href = "https://api.spotify.com/v1/users/spotify";
//                    id = spotify;
//                    type = user;
//                    uri = "spotify:user:spotify";
//                };
//                "primary_color" = "<null>";
//                public = "<null>";
//                "snapshot_id" = MTY5NTYyMDEwOSwwMDAwMDAwMDM4ZDJiZjNhY2Y1ZDZjZTdmMTM5YTMwNzY0YmVjZDUy;
//                tracks =                 {
//                    href = "https://api.spotify.com/v1/playlists/37i9dQZF1DX4qF0846GNk8/tracks";
//                    total = 46;
//                };
//                type = playlist;
//                uri = "spotify:playlist:37i9dQZF1DX4qF0846GNk8";
//            },
//                        {
//                collaborative = 0;
//                description = "\U0627\U0646\U062f\U064a \U0648\U0631\U0648\U0643 \U0648\U0623\U0646\U062f\U0631\U062c\U0631\U0627\U0648\U0646\U062f \U0645\U0635\U0631\U064a \Ud83d\Ude0e\Ud83c\Udfa4 \U063a\U0644\U0627\U0641: \U0645\U062d\U0645\U062f \U0633\U0639\U064a\U062f\n";
//                "external_urls" =                 {
//                    spotify = "https://open.spotify.com/playlist/37i9dQZF1DWV4t1PmvRVd9";
//                };
//                href = "https://api.spotify.com/v1/playlists/37i9dQZF1DWV4t1PmvRVd9";
//                id = 37i9dQZF1DWV4t1PmvRVd9;
//                images =                 (
//                                        {
//                        height = "<null>";
//                        url = "https://i.scdn.co/image/ab67706f00000003fb02e8cf593fe694773dec3e";
//                        width = "<null>";
//                    }
//                );
//                name = "\U0627\U0644\U0633\U0627\U0642\U064a\U0629";
//                owner =                 {
//                    "display_name" = Spotify;
//                    "external_urls" =                     {
//                        spotify = "https://open.spotify.com/user/spotify";
//                    };
//                    href = "https://api.spotify.com/v1/users/spotify";
//                    id = spotify;
//                    type = user;
//                    uri = "spotify:user:spotify";
//                };
//                "primary_color" = "<null>";
//                public = "<null>";
//                "snapshot_id" = MTY5NTk2NDQ3NSwwMDAwMDAwMDU5MzE2OWE2OGY0N2UyNDdlYTdkNTUxZmQ2YTY5NTdk;
//                tracks =                 {
//                    href = "https://api.spotify.com/v1/playlists/37i9dQZF1DWV4t1PmvRVd9/tracks";
//                    total = 50;
//                };
//                type = playlist;
//                uri = "spotify:playlist:37i9dQZF1DWV4t1PmvRVd9";
//            },
//                        {
//                collaborative = 0;
//                description = "\U0623\U062d\U062f\U062b \U0627\U0644\U0623\U063a\U0627\U0646\U064a \U0627\U0644\U0645\U0635\U0631\U064a\U0629 \U0647\U0646\U0627\Ud83e\Udd29 \U0627\U0644\U063a\U0644\U0627\U0641:<a href=\"https://open.spotify.com/artist/6MQnUjIjnIOfHDFzqBJOAl?si=BG7B9bJ-TwWccNonxJ5DhA\"> \U0623\U0635\U0627\U0644\U0629 </a>";
//                "external_urls" =                 {
//                    spotify = "https://open.spotify.com/playlist/37i9dQZF1DWXJnW46G73SM";
//                };
//                href = "https://api.spotify.com/v1/playlists/37i9dQZF1DWXJnW46G73SM";
//                id = 37i9dQZF1DWXJnW46G73SM;
//                images =                 (
//                                        {
//                        height = "<null>";
//                        url = "https://i.scdn.co/image/ab67706f00000003559ffa211e81168dcc2aea61";
//                        width = "<null>";
//                    }
//                );
//                name = "\U0645\U0635\U0631\U064a \U062c\U062f\U064a\U062f";
//                owner =                 {
//                    "display_name" = Spotify;
//                    "external_urls" =                     {
//                        spotify = "https://open.spotify.com/user/spotify";
//                    };
//                    href = "https://api.spotify.com/v1/users/spotify";
//                    id = spotify;
//                    type = user;
//                    uri = "spotify:user:spotify";
//                };
//                "primary_color" = "<null>";
//                public = "<null>";
//                "snapshot_id" = MTY5NjE3MzMzNSwwMDAwMDAwMGJmMDZmZjdjNjgxMWEzOWRlNTg2YWVkM2EwY2Q2MzU1;
//                tracks =                 {
//                    href = "https://api.spotify.com/v1/playlists/37i9dQZF1DWXJnW46G73SM/tracks";
//                    total = 77;
//                };
//                type = playlist;
//                uri = "spotify:playlist:37i9dQZF1DWXJnW46G73SM";
//            },
//                        {
//                collaborative = 0;
//                description = "\U0623\U0641\U0636\U0644 \U0627\U0644\U0623\U063a\U0627\U0646\U064a \U0627\U0644\U0634\U0639\U0628\U064a\U0629 \U0645\U0646 \U0642\U0644\U0628 \U0645\U0635\U0631! \U063a\U0644\U0627\U0641:<a href=\"https://open.spotify.com/artist/5jii08sWD8V92EdOofQo52?si=v7EAopWETMqME3LXKcLsdw\">  \U0645\U0635\U0637\U0641\U0649 \U062d\U062c\U0627\U062c </a>";
//                "external_urls" =                 {
//                    spotify = "https://open.spotify.com/playlist/37i9dQZF1DX7Gwi28HhdBP";
//                };
//                href = "https://api.spotify.com/v1/playlists/37i9dQZF1DX7Gwi28HhdBP";
//                id = 37i9dQZF1DX7Gwi28HhdBP;
//                images =                 (
//                                        {
//                        height = "<null>";
//                        url = "https://i.scdn.co/image/ab67706f0000000355e3fb1afd2f5c086c031c16";
//                        width = "<null>";
//                    }
//                );
//                name = "\U0634\U0639\U0628\U064a \U0645\U0635\U0631\U064a";
//                owner =                 {
//                    "display_name" = Spotify;
//                    "external_urls" =                     {
//                        spotify = "https://open.spotify.com/user/spotify";
//                    };
//                    href = "https://api.spotify.com/v1/users/spotify";
//                    id = spotify;
//                    type = user;
//                    uri = "spotify:user:spotify";
//                };
//                "primary_color" = "<null>";
//                public = "<null>";
//                "snapshot_id" = MTY5NTEyODk0MiwwMDAwMDAwMGVjMmQ3ZDg0ZGFlZjBiYWM5YzYxNTUyMTlhMTU5NmQz;
//                tracks =                 {
//                    href = "https://api.spotify.com/v1/playlists/37i9dQZF1DX7Gwi28HhdBP/tracks";
//                    total = 50;
//                };
//                type = playlist;
//                uri = "spotify:playlist:37i9dQZF1DX7Gwi28HhdBP";
//            },
//                        {
//                collaborative = 0;
//                description = "A selection of the finest Hip-Hop tracks from the illest Arab Rappers. Cover: Marwan Moussa";
//                "external_urls" =                 {
//                    spotify = "https://open.spotify.com/playlist/37i9dQZF1DXd43GfSFAeHA";
//                };
//                href = "https://api.spotify.com/v1/playlists/37i9dQZF1DXd43GfSFAeHA";
//                id = 37i9dQZF1DXd43GfSFAeHA;
//                images =                 (
//                                        {
//                        height = "<null>";
//                        url = "https://i.scdn.co/image/ab67706f0000000358a7b96c92b5f1e8f2ce8d8a";
//                        width = "<null>";
//                    }
//                );
//                name = "Arab Hip-Hop";
//                owner =                 {
//                    "display_name" = Spotify;
//                    "external_urls" =                     {
//                        spotify = "https://open.spotify.com/user/spotify";
//                    };
//                    href = "https://api.spotify.com/v1/users/spotify";
//                    id = spotify;
//                    type = user;
//                    uri = "spotify:user:spotify";
//                };
//                "primary_color" = "<null>";
//                public = "<null>";
//                "snapshot_id" = MTY5NTY0MDI2MSwwMDAwMDAwMGZkY2UyMTM2OGFkY2NhYTI2YmIxZjk5ZWQ1MDgwZDBm;
//                tracks =                 {
//                    href = "https://api.spotify.com/v1/playlists/37i9dQZF1DXd43GfSFAeHA/tracks";
//                    total = 51;
//                };
//                type = playlist;
//                uri = "spotify:playlist:37i9dQZF1DXd43GfSFAeHA";
//            },
//                        {
//                collaborative = 0;
//                description = "The best dance and electronic songs in the MENA region. Cover: Alan Walker, Sophie Stray & Zena Emad";
//                "external_urls" =                 {
//                    spotify = "https://open.spotify.com/playlist/37i9dQZF1DX4rmnjMBxfCv";
//                };
//                href = "https://api.spotify.com/v1/playlists/37i9dQZF1DX4rmnjMBxfCv";
//                id = 37i9dQZF1DX4rmnjMBxfCv;
//                images =                 (
//                                        {
//                        height = "<null>";
//                        url = "https://i.scdn.co/image/ab67706f0000000368a37a286ac3ce8046dffcc4";
//                        width = "<null>";
//                    }
//                );
//                name = "mint \U0646\U0639\U0646\U0639";
//                owner =                 {
//                    "display_name" = Spotify;
//                    "external_urls" =                     {
//                        spotify = "https://open.spotify.com/user/spotify";
//                    };
//                    href = "https://api.spotify.com/v1/users/spotify";
//                    id = spotify;
//                    type = user;
//                    uri = "spotify:user:spotify";
//                };
//                "primary_color" = "<null>";
//                public = "<null>";
//                "snapshot_id" = MTY5NDYwOTgxNywwMDAwMDAwMDU4OTY5NWJjNzBkZjAwY2EyM2NkNjEwNTc4ZGQxZGNm;
//                tracks =                 {
//                    href = "https://api.spotify.com/v1/playlists/37i9dQZF1DX4rmnjMBxfCv/tracks";
//                    total = 47;
//                };
//                type = playlist;
//                uri = "spotify:playlist:37i9dQZF1DX4rmnjMBxfCv";
//            },
//                        {
//                collaborative = 0;
//                description = "Get ready for some serious 00s nostalgia. Cover : Nancy Ajram";
//                "external_urls" =                 {
//                    spotify = "https://open.spotify.com/playlist/37i9dQZF1DWTTCCEjVC99N";
//                };
//                href = "https://api.spotify.com/v1/playlists/37i9dQZF1DWTTCCEjVC99N";
//                id = 37i9dQZF1DWTTCCEjVC99N;
//                images =                 (
//                                        {
//                        height = "<null>";
//                        url = "https://i.scdn.co/image/ab67706f00000003c5f40e98895903a42c82024d";
//                        width = "<null>";
//                    }
//                );
//                name = "00s Arabic Hits";
//                owner =                 {
//                    "display_name" = Spotify;
//                    "external_urls" =                     {
//                        spotify = "https://open.spotify.com/user/spotify";
//                    };
//                    href = "https://api.spotify.com/v1/users/spotify";
//                    id = spotify;
//                    type = user;
//                    uri = "spotify:user:spotify";
//                };
//                "primary_color" = "<null>";
//                public = "<null>";
//                "snapshot_id" = MTY5NDc3NzUwMSwwMDAwMDAwMDJlNTljNzhlNjA5NjA0NGRiYjYyMWNkN2YyZjBjYTc1;
//                tracks =                 {
//                    href = "https://api.spotify.com/v1/playlists/37i9dQZF1DWTTCCEjVC99N/tracks";
//                    total = 104;
//                };
//                type = playlist;
//                uri = "spotify:playlist:37i9dQZF1DWTTCCEjVC99N";
//            },
//                        {
//                collaborative = 0;
//                description = "Ya Wailee! Get ready for some serious 90s nostalgia. Cover : Amr Diab";
//                "external_urls" =                 {
//                    spotify = "https://open.spotify.com/playlist/37i9dQZF1DXaHuo0R6jTxZ";
//                };
//                href = "https://api.spotify.com/v1/playlists/37i9dQZF1DXaHuo0R6jTxZ";
//                id = 37i9dQZF1DXaHuo0R6jTxZ;
//                images =                 (
//                                        {
//                        height = "<null>";
//                        url = "https://i.scdn.co/image/ab67706f0000000391da73c46b9336eb5ba49165";
//                        width = "<null>";
//                    }
//                );
//                name = "90s Arabic Hits";
//                owner =                 {
//                    "display_name" = Spotify;
//                    "external_urls" =                     {
//                        spotify = "https://open.spotify.com/user/spotify";
//                    };
//                    href = "https://api.spotify.com/v1/users/spotify";
//                    id = spotify;
//                    type = user;
//                    uri = "spotify:user:spotify";
//                };
//                "primary_color" = "<null>";
//                public = "<null>";
//                "snapshot_id" = MTY5NDc4NTM5MCwwMDAwMDAwMGMxMjMzYWNjYmEzYzA4OWM4ZTI3Yjg4MzFmZDU4OTE4;
//                tracks =                 {
//                    href = "https://api.spotify.com/v1/playlists/37i9dQZF1DXaHuo0R6jTxZ/tracks";
//                    total = 40;
//                };
//                type = playlist;
//                uri = "spotify:playlist:37i9dQZF1DXaHuo0R6jTxZ";
//            },
//                        {
//                collaborative = 0;
//                description = "Top Sharqi hits right now. Cover: Nassif Zeytoun.";
//                "external_urls" =                 {
//                    spotify = "https://open.spotify.com/playlist/37i9dQZF1DXe3aCmUoBd8n";
//                };
//                href = "https://api.spotify.com/v1/playlists/37i9dQZF1DXe3aCmUoBd8n";
//                id = 37i9dQZF1DXe3aCmUoBd8n;
//                images =                 (
//                                        {
//                        height = "<null>";
//                        url = "https://i.scdn.co/image/ab67706f00000003f156632c8850333c570f439e";
//                        width = "<null>";
//                    }
//                );
//                name = "Top Sharqi Hits";
//                owner =                 {
//                    "display_name" = Spotify;
//                    "external_urls" =                     {
//                        spotify = "https://open.spotify.com/user/spotify";
//                    };
//                    href = "https://api.spotify.com/v1/users/spotify";
//                    id = spotify;
//                    type = user;
//                    uri = "spotify:user:spotify";
//                };
//                "primary_color" = "<null>";
//                public = "<null>";
//                "snapshot_id" = MTY5Mjk2MzIwMywwMDAwMDAwMDMxNTk3MGYxY2RlM2FmMzU4YTU1OGMwZjRkNTRlY2Q2;
//                tracks =                 {
//                    href = "https://api.spotify.com/v1/playlists/37i9dQZF1DXe3aCmUoBd8n/tracks";
//                    total = 50;
//                };
//                type = playlist;
//                uri = "spotify:playlist:37i9dQZF1DXe3aCmUoBd8n";
//            },
//                        {
//                collaborative = 0;
//                description = "\U0623\U063a\U0627\U0646\U064a \U0644\U0623\U0642\U0648\U0649 \U062a\U0645\U0631\U064a\U0646\U0629 \Ud83d\Udcaa";
//                "external_urls" =                 {
//                    spotify = "https://open.spotify.com/playlist/37i9dQZF1DX1fzTwl8xjJf";
//                };
//                href = "https://api.spotify.com/v1/playlists/37i9dQZF1DX1fzTwl8xjJf";
//                id = 37i9dQZF1DX1fzTwl8xjJf;
//                images =                 (
//                                        {
//                        height = "<null>";
//                        url = "https://i.scdn.co/image/ab67706f000000035353886459b6832a8bb4c90a";
//                        width = "<null>";
//                    }
//                );
//                name = "\U0639\U0627\U0634 \U064a\U0627 \U0648\U062d\U0634";
//                owner =                 {
//                    "display_name" = Spotify;
//                    "external_urls" =                     {
//                        spotify = "https://open.spotify.com/user/spotify";
//                    };
//                    href = "https://api.spotify.com/v1/users/spotify";
//                    id = spotify;
//                    type = user;
//                    uri = "spotify:user:spotify";
//                };
//                "primary_color" = "<null>";
//                public = "<null>";
//                "snapshot_id" = MTY5NTkwNDUxMCwwMDAwMDAwMDNjOTRlZmUwOGY2YWU2NWRkNDVkZmNhNzU3ODI5OTNj;
//                tracks =                 {
//                    href = "https://api.spotify.com/v1/playlists/37i9dQZF1DX1fzTwl8xjJf/tracks";
//                    total = 120;
//                };
//                type = playlist;
//                uri = "spotify:playlist:37i9dQZF1DX1fzTwl8xjJf";
//            },
//                        {
//                collaborative = 0;
//                description = "Hypnotic bliss.";
//                "external_urls" =                 {
//                    spotify = "https://open.spotify.com/playlist/37i9dQZF1DWSiZVO2J6WeI";
//                };
//                href = "https://api.spotify.com/v1/playlists/37i9dQZF1DWSiZVO2J6WeI";
//                id = 37i9dQZF1DWSiZVO2J6WeI;
//                images =                 (
//                                        {
//                        height = "<null>";
//                        url = "https://i.scdn.co/image/ab67706f00000003c8f35433ae669c7386a29ea1";
//                        width = "<null>";
//                    }
//                );
//                name = "Dreamy Vibes";
//                owner =                 {
//                    "display_name" = Spotify;
//                    "external_urls" =                     {
//                        spotify = "https://open.spotify.com/user/spotify";
//                    };
//                    href = "https://api.spotify.com/v1/users/spotify";
//                    id = spotify;
//                    type = user;
//                    uri = "spotify:user:spotify";
//                };
//                "primary_color" = "<null>";
//                public = "<null>";
//                "snapshot_id" = MTY5NDc4MDc2NSwwMDAwMDAwMDI4MjZkYjUzM2U4MzMzMTcyYmI1ODI5YTZjNmNmNzUx;
//                tracks =                 {
//                    href = "https://api.spotify.com/v1/playlists/37i9dQZF1DWSiZVO2J6WeI/tracks";
//                    total = 150;
//                };
//                type = playlist;
//                uri = "spotify:playlist:37i9dQZF1DWSiZVO2J6WeI";
//            }
//        );
//        limit = 50;
//        next = "<null>";
//        offset = 0;
//        previous = "<null>";
//        total = 18;
//    };
//}
