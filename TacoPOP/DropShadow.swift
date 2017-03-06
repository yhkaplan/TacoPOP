//
//  DropShadow.swift
//  TacoPOP
//
//  Created by Joshua Kaplan on 2017/03/06.
//  Copyright © 2017年 Joshua Kaplan. All rights reserved.
//

import UIKit

protocol DropShadow {}

//Constraining extension or protocol to a certain type
extension DropShadow where Self: UIView {
    
    func addDropShadow() {
        layer.shadowColor = UIColor.black.cgColor//Deleted the ()
        layer.shadowOpacity = 0.7
        layer.shadowOffset = CGSize.zero
        layer.shadowRadius = 5
    }
    
}
