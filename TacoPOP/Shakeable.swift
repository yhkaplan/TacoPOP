//
//  Shakeable.swift
//  TacoPOP
//
//  Created by Joshua Kaplan on 2017/03/07.
//  Copyright © 2017年 Joshua Kaplan. All rights reserved.
//

import UIKit

protocol Shakeable {}

extension Shakeable where Self: UIView {
    func shake() {
        let animate = CABasicAnimation(keyPath: "position")
        animate.duration = 0.05
        animate.repeatCount = 5
        animate.autoreverses = true
        animate.fromValue = NSValue(cgPoint: CGPoint(x: self.center.x - 4.0, y: self.center.y))
        animate.toValue = NSValue(cgPoint: CGPoint(x: self.center.x + 4.0, y: self.center.y))
        layer.add(animate, forKey: "position")
    }
}
