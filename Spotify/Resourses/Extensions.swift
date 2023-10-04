//
//  Extensions.swift
//  Spotify
//
//  Created by mac on 24/09/2023.
//

import Foundation
import UIKit

extension UIView {
    var width: CGFloat{
        return frame.size.width
    }
    var height: CGFloat{
        return frame.size.height
    }
    var left: CGFloat{
        return frame.origin.x
    }
    var right: CGFloat{
        return left + width
    }
    var top: CGFloat{
        return frame.origin.y
    }
    var bottom: CGFloat{
        return top + height
    }
}

extension DateFormatter {
    static let dateFormater: DateFormatter = {
       let dateFormater = DateFormatter()
        dateFormater.dateFormat = "YYYY-MM-dd"
        return dateFormater
    }()
    
    static let displayDateFormater: DateFormatter = {
       let dateFormater = DateFormatter()
        dateFormater.dateStyle = .medium
        return dateFormater
    }()

}

extension String {
    static func formatedDate(string: String) -> String {
        guard let date = DateFormatter.dateFormater.date(from: string) else {
            return string
        }
        return DateFormatter.displayDateFormater.string(from: date)
    }
}
