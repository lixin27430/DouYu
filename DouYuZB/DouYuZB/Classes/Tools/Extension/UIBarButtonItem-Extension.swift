//
//  File.swift
//  DouYuZB
//
//  Created by 李鑫 on 2017/10/3.
//  Copyright © 2017年 lixin. All rights reserved.
//

import UIKit

extension UIBarButtonItem{
    class func createItem(imageName: String, hightImageName: String , size: CGSize) -> UIBarButtonItem{
        let btn = UIButton()
        btn.setImage(UIImage(named: imageName), for:.normal)
        btn.setImage(UIImage(named: hightImageName), for:.highlighted)
        btn.frame = CGRect(origin: CGPoint.zero, size:size)
        return UIBarButtonItem(customView:btn)
    }
}
