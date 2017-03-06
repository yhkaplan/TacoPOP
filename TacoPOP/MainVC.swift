//
//  MainVC.swift
//  TacoPOP
//
//  Created by Joshua Kaplan on 2017/03/04.
//  Copyright © 2017年 Joshua Kaplan. All rights reserved.
//

import UIKit

class MainVC: UIViewController {

    @IBOutlet weak var headerView: HeaderView?
    
    override func viewDidLoad() {
        super.viewDidLoad()

        
        headerView?.addDropShadow()
        
    }




}
