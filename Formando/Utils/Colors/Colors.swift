//
//  Colors.swift
//  Formando
//
//  Created by Ronaldo Gomes on 20/11/20.
//

import Foundation
import UIKit
extension UIColor {
    
    static let transparentLightBlue = UIColor(red: 90/255, green: 200/255, blue: 250/255, alpha: 0.50)
    static let customBrown = UIColor(red: 111/255, green: 96/255, blue: 94/255, alpha: 1)
    
    // MARK: - Formando
    static let lightOrangeBackgroundFormando = UIColor(red: 255/255, green: 248/255, blue: 241/255, alpha: 1)
    static let orangeActionFormando = UIColor(red: 242/255, green: 125/255, blue: 17/255, alpha: 1)
    static let orangeBackgroundFormando = UIColor(red: 255/255, green: 216/255, blue: 181/255, alpha: 1)
  
    // MARK: - Letters Colors
    static let purpleCustom = UIColor(red: 170/255, green: 115/255, blue: 209/255, alpha: 1)
    static let blueCustom = UIColor(red: 15/255, green: 209/255, blue: 236/255, alpha: 1)
    static let yellowCustom = UIColor(red: 240/255, green: 194/255, blue: 72/255, alpha: 1)
    static let pinkBaby = UIColor(red: 245/255, green: 166/255, blue: 195/255, alpha: 1)
    static let redCustom = UIColor(red: 221/255, green: 0/255, blue: 0/255, alpha: 1)
    
    // MARK: - Random UIColor Elements
    static func random(from colors: [UIColor]) -> UIColor? {
        return colors.randomElement()
    }

}
