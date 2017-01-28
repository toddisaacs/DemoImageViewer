//
//  UIImage.swift
//  DemoImageViewer
//
//  Created by Todd Isaacs on 1/28/17.
//  Copyright © 2017 Todd Isaacs. All rights reserved.
//

import UIKit

extension UIImage {
  func thumbnailOfSize(_ size: CGFloat) -> UIImage {
    UIGraphicsBeginImageContext(CGSize(width: size, height: size))
    let rect = CGRect(x: 0.0, y: 0.0, width: size, height: size)
    UIGraphicsBeginImageContext(rect.size)
    draw(in: rect)
    let thumbnail = UIGraphicsGetImageFromCurrentImageContext();
    UIGraphicsEndImageContext()
    return thumbnail!
  }
}
