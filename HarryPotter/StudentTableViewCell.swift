//
//  StudentTableViewCell.swift
//  HarryPotter
//
//  Created by Home on 8/5/19.
//  Copyright © 2019 Sophie Zhou. All rights reserved.
//

import UIKit

class StudentTableViewCell: UITableViewCell {
    let studentName = UILabel()

    
    override init(style: UITableViewCell.CellStyle, reuseIdentifier: String?) {
        super.init(style: style, reuseIdentifier: reuseIdentifier)
    }
    
    required init?(coder aDecoder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    override func layoutSubviews() {
        super.layoutSubviews()
        
        let padding : CGFloat = 10
        self.addSubview(studentName)
        self.studentName.frame = CGRect(x: padding,
                                        y: padding,
                                        width: self.studentName.frame.width,
                                        height: self.studentName.frame.height)
    }
    
    func configure(student : Student){
        self.studentName.text = student.name
        self.studentName.sizeToFit()
    }
    
}
