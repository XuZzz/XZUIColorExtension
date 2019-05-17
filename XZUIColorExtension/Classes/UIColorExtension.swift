//
//  UIColorExtension.swift
//  CDBase
//
//  Created by Xu on 2019/4/26.
//  Copyright © 2019 com.delinshe. All rights reserved.
//

import Foundation
import UIKit

public extension UIColor {
    
    class var color_f5f5f5: UIColor {
        return UIColor.hexColor("#f5f5f5")
    }
    class var color_333333: UIColor {
        return UIColor.hexColor("#333333")
    }
    class var color_666666: UIColor {
        return UIColor.hexColor("#666666")
    }
    class var color_999999: UIColor {
        return UIColor.hexColor("#999999")
    }
    class var color_mengban: UIColor {
        return UIColor(red: 64.0/255.0, green: 64.0/255.0, blue: 64.0/255.0, alpha: 0.75)
    }
    
    class var color_202020: UIColor {
        return UIColor.hexColor("#202020")
    }
    
    var toHexString: String {
        var r: CGFloat = 0
        var g: CGFloat = 0
        var b: CGFloat = 0
        var a: CGFloat = 0
        
        self.getRed(&r, green: &g, blue: &b, alpha: &a)
        
        return String(
            format: "%02X%02X%02X",
            Int(r * 0xff),
            Int(g * 0xff),
            Int(b * 0xff)
        )
    }
    
    static func hexColor(_ color: String) -> UIColor{
        
        let hexString = color.trimmingCharacters(in: .whitespacesAndNewlines)
        let scanner = Scanner(string: hexString)
        
        if hexString.hasPrefix("#") {
            scanner.scanLocation = 1
        }
        
        var color: UInt32 = 0
        scanner.scanHexInt32(&color)
        
        let mask = 0x000000FF
        let r = Int(color >> 16) & mask
        let g = Int(color >> 8) & mask
        let b = Int(color) & mask
        
        let red   = CGFloat(r) / 255.0
        let green = CGFloat(g) / 255.0
        let blue  = CGFloat(b) / 255.0
    
        let hexColor = UIColor.init(red: red, green: green, blue: blue, alpha: 1)
        return hexColor
    }


}
