//
//  HapticsManager.swift
//  Spotify
//
//  Created by mac on 24/09/2023.
//

import Foundation
import UIKit

final class HapticsMananger{
    static let shared = HapticsMananger()
    
    private init(){}
    
    public func vibrateForSelection() {
        DispatchQueue.main.async {
            let generator = UISelectionFeedbackGenerator()
            generator.prepare()
            generator.selectionChanged()
        }
    }
    
    public func vibrate(for type: UINotificationFeedbackGenerator.FeedbackType) {
        let generator = UINotificationFeedbackGenerator()
        generator.prepare()
        generator.notificationOccurred(type)
    }
}
