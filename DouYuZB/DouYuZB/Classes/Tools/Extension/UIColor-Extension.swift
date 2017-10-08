//
//  UIColor-Extension.swift
//  DouYuZB
//
//  Created by 李鑫 on 2017/10/8.
//  Copyright © 2017年 lixin. All rights reserved.
//

import UIKit

extension UIColor{
    convenience init(r: CGFloat, g: CGFloat, b: CGFloat) {
        self.init(red: r/255.0, green: g/255.0, blue: b/255.0, alpha: 1.0)
    }
}
