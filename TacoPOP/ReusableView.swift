//
//  ReusableView.swift
//  TacoPOP
//
//  Created by Joshua Kaplan on 2017/03/07.
//  Copyright © 2017年 Joshua Kaplan. All rights reserved.
//

import UIKit

protocol ReusableView: class {}

extension ReusableView where Self: UIView {
    
    
    static var reuseIdentifier: String {
        return String(describing: self)
    }
    
}
