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
        
        if color.count <= 0 || color.count != 7 || color == "(null)" || color == "<null>" {
            return UIColor.white
        }
        var red: UInt32 = 0x0
        var green: UInt32 = 0x0
        var blue: UInt32 = 0x0
        let redString = String(color[color.index(color.startIndex, offsetBy: 1)...color.index(color.startIndex, offsetBy: 2)])
        let greenString = String(color[color.index(color.startIndex, offsetBy: 3)...color.index(color.startIndex, offsetBy: 4)])
        let blueString = String(color[color.index(color.startIndex, offsetBy: 5)...color.index(color.startIndex, offsetBy: 6)])
        Scanner(string: redString).scanHexInt32(&red)
        Scanner(string: greenString).scanHexInt32(&green)
        Scanner(string: blueString).scanHexInt32(&blue)
        let hexColor = UIColor.init(red: CGFloat(red)/255.0, green: CGFloat(green)/255.0, blue: CGFloat(blue)/255.0, alpha: 1)
        return hexColor

    }

}
