//
//  HouseViewController.swift
//  BaseExam
//
//  Created by Sophie Zhou on 9/19/17.
//  Copyright © 2017 Sophie Zhou. All rights reserved.
//

import UIKit

class HouseViewController: UIViewController {

    @IBOutlet weak var label: UILabel!
    @IBOutlet weak var image: UIImageView!
    @IBOutlet weak var studentsButton: UIButton!
    var hName : HouseType
    
    init(type: HouseType) {
        self.hName = type
        super.init(nibName: nil, bundle: nil)
        
        switch hName {
        case .gryffindor:
            self.title = "Gryffindor"
        
            
        case .hufflepuff:
            self.title = "Hufflepuff"
            
            
        case .ravenclaw:
            self.title = "Ravenclaw"
          
            
        case .slytherin:
            self.title = "Slytherin"
            
            
        }
    }
    
    required init?(coder aDecoder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    
    //gives each page
    override func viewDidLoad() {
        super.viewDidLoad()
        switch hName {
        case .gryffindor:
            label.text = "You have entered House Gryffindor"
            image.image = #imageLiteral(resourceName: "gryffindor-big")
        case .hufflepuff:
            label.text = "You have entered House Hufflepuff"
            image.image = #imageLiteral(resourceName: "hufflepuff-big")
        case .ravenclaw:
            label.text = "You have entered House Ravenclaw"
            image.image = #imageLiteral(resourceName: "ravenclaw-big")
        case .slytherin:
            label.text = "You have entered House Slytherin"
            image.image = #imageLiteral(resourceName: "slytherin-big")
            
        }
        studentsButton.addTarget(self, action: #selector(buttonPressed), for: .touchUpInside)
        
    
    }
    
    @objc func buttonPressed(){
        
        switch hName {
        case .gryffindor:
            let vc = StudentsViewController(type: .gryffindor)
            self.navigationController?.pushViewController(vc, animated: true)
        case .hufflepuff:
            let vc = StudentsViewController(type: .hufflepuff)
            self.navigationController?.pushViewController(vc, animated: true)
        case .ravenclaw:
            let vc = StudentsViewController(type: .ravenclaw)
            self.navigationController?.pushViewController(vc, animated: true)
        case .slytherin:
            let vc = StudentsViewController(type: .slytherin)
            self.navigationController?.pushViewController(vc, animated: true)
        }
       
    }
    
    
}
