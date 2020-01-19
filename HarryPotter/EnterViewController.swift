//
//  EnterViewController.swift
//  NavigationTabBar2
//
//  Created by Sophie Zhou on 11/17/17.
//  Copyright © 2017 Sophie Zhou. All rights reserved.
//

import UIKit

class EnterViewController: UIViewController {

    @IBOutlet weak var label: UILabel!
    @IBOutlet weak var button: UIButton!
    
    var house : HouseType
    
    init(type: HouseType) {
         self.house = type
        super.init(nibName: nil, bundle: nil)
       
        self.navigationItem.title = "Enter"
        switch type {
        case .gryffindor:
            title = "Griffindoor"
            self.tabBarItem = UITabBarItem(title: "Griffindoor", image: #imageLiteral(resourceName: "gryffindor"), tag: 0)
            self.house = .gryffindor
        case .hufflepuff:
            title = "Hufflepuff"
            self.tabBarItem = UITabBarItem(title: "Hufflepuff", image: #imageLiteral(resourceName: "ravenclaw"), tag: 0)
            self.house = .hufflepuff
        case .ravenclaw:
            title = "Ravenclaw"
            self.tabBarItem = UITabBarItem(title: "Ravenclaw", image: #imageLiteral(resourceName: "hufflepuff"), tag: 0)
            self.house = .ravenclaw
        case .slytherin:
            title = "Slytherin"
            self.tabBarItem = UITabBarItem(title: "Slytherin", image: #imageLiteral(resourceName: "slytherin"), tag: 0)
            self.house = .slytherin
        }
    }

    required init?(coder aDecoder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }

    override func viewDidLoad() {
        super.viewDidLoad()
        self.label.font = UIFont.boldSystemFont(ofSize: 28)
        self.button.titleLabel?.font = UIFont.systemFont(ofSize: 20)
        
        self.view.backgroundColor = UIColor.white
        
        switch house {
        case .gryffindor:
            self.button.setTitle("Enter Gryffindor ", for: .normal)
        case .hufflepuff:
            self.button.setTitle("Enter Hufflepuff ", for: .normal)
        case .ravenclaw:
            self.button.setTitle("Enter Ravenclaw ", for: .normal)
        case .slytherin:
            self.button.setTitle("Enter Sytherin ", for: .normal)
        
        }
        
       
    
        self.button.addTarget(self, action: #selector(buttonPressed), for: .touchUpInside)
    }
    
    @objc private func buttonPressed() {
        switch house {
        case .gryffindor:
                let vc = HouseViewController(type: .gryffindor)
                self.navigationController?.pushViewController(vc, animated: true)
        case .hufflepuff:
                let vc = HouseViewController(type: .hufflepuff)
                self.navigationController?.pushViewController(vc, animated: true)
        case .ravenclaw:
                let vc = HouseViewController(type: .ravenclaw)
                self.navigationController?.pushViewController(vc, animated: true)
        case .slytherin:
                let vc = HouseViewController(type: .slytherin)
                self.navigationController?.pushViewController(vc, animated: true) 
        }
    }

}
