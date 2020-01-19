//
//  StudentsViewController.swift
//  HarryPotter
//
//  Created by Home on 8/5/19.
//  Copyright © 2019 Sophie Zhou. All rights reserved.
//

import UIKit

class StudentsViewController: UIViewController, UITableViewDataSource {
  
    
    let tableView = UITableView()
    var house : HouseType
    var studentList : [String]
    init(type : HouseType){
        
        self.house = type
        self.studentList = []
        super.init(nibName: nil, bundle: nil)
    }
//    override init(nibName nibNameOrNil: String?, bundle nibBundleOrNil: Bundle?) {
//        self.house = type
//        super.init(nibName: nil, bundle: nil)
//    }

    required init?(coder aDecoder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }

    override func viewDidLoad() {
        super.viewDidLoad()
        self.view.addSubview(tableView)
        self.view.backgroundColor = .white
        
        switch house {
        case .gryffindor:
            studentList = ["Harry Potter", "Ron Weasley", "Hermione Granger", "Katie Bell", "Angelina Johnson", "Fred Weasley", "George Weasley", "Oliver Wood"]
            self.title = "Students of Gryffindor"
        case .ravenclaw :
            studentList =
            ["Sue Li", "Padma Patil", "Lisa Turpin", "Cho Chang", "Eddie Carmichael", "Roger Davies", "Penelope Clearwater"]
            self.title = "Students of Ravenclaw"
        case .hufflepuff:
            studentList = ["Susan Bones", "Justin Finch-Fletchley", "Megan Jones", "Cedric Diggory"]
            self.title = "Students of Hufflepuff"
        case .slytherin :
            studentList = ["Vincent Crabbe", "Gregory Goyle", "Daphne Greengrass", "Draco Malfoy", "Pansy Parkinson", "Adrian Pucey"]
            self.title = "Students of Slytherin"

        }
        
        self.tableView.dataSource = self
        self.tableView.register(StudentTableViewCell.self, forCellReuseIdentifier: "Identifier")
        
    }
    override func viewDidLayoutSubviews() {
        super.viewDidLayoutSubviews()
        self.tableView.frame = self.view.bounds
    }
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return studentList.count
    }
    

    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "Identifier") as! StudentTableViewCell
        cell.textLabel?.text = self.studentList[indexPath.row]
        return cell
    }

}
