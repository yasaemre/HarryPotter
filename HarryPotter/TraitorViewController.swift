//
//  TraitorViewController.swift
//  HarryPotter
//
//  Created by Home on 8/1/19.
//  Copyright © 2019 Sophie Zhou. All rights reserved.
//

import UIKit
class TraitorViewController: UIViewController {
    
    let traitorL = UILabel()
    let traitorT = UILabel()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        traitorL.frame = CGRect(x: 50, y: 160, width: 0, height: 0)
        traitorL.font = UIFont.systemFont(ofSize: 60)
        traitorL.text = "Trator!"
        traitorL.textColor = UIColor.red
        traitorL.sizeToFit()
        
        traitorT.frame = CGRect(x: 40, y: 230, width: 0, height: 0)
        traitorT.font = UIFont.systemFont(ofSize: 30)
        traitorT.textColor = UIColor.red
        traitorT.text = "You are already part of House"
        traitorT.sizeToFit()
        
        self.view.addSubview(traitorL)
        self.view.addSubview(traitorT)
        
        self.navigationItem.title = "Access Denied"
    }
}


