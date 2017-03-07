//
//  NibLoadableView.swift
//  TacoPOP
//
//  Created by Joshua Kaplan on 2017/03/07.
//  Copyright © 2017年 Joshua Kaplan. All rights reserved.
//

import UIKit

protocol NibLoadableView: class {}

extension NibLoadableView where Self: UIView {
    static var nibName: String {
        return String(describing: self)
    }
}
