//
//  SettingsModels.swift
//  Spotify
//
//  Created by mac on 01/10/2023.
//

import Foundation

struct Section {
    let title: String
    let options: [Option]
    
}

struct Option {
    let title: String
    let handler: () -> Void
}
