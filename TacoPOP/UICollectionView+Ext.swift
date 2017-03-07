//
//  UICollectionView+Ext.swift
//  TacoPOP
//
//  Created by Joshua Kaplan on 2017/03/07.
//  Copyright © 2017年 Joshua Kaplan. All rights reserved.
//

import UIKit

extension UICollectionView {
    
    //new syntax here
    func register<T: UICollectionViewCell>(_: T.Type) where T: ReusableView, T: NibLoadableView {
        let nib = UINib(nibName: T.nibName, bundle: nil)
        register(nib, forCellWithReuseIdentifier: T.reuseIdentifier)
    }
    
    //syntax change
    func dequeueReusableCell<T: UICollectionViewCell>(forIndexPath indexPath: IndexPath) -> T where T: ReusableView {
        guard let cell = dequeueReusableCell(withReuseIdentifier: T.reuseIdentifier, for: indexPath) as? T else {
            fatalError("Could not dequeue cell with identifier: \(T.reuseIdentifier)")
        }
        return cell
    }
}

extension UICollectionViewCell: ReusableView {}
