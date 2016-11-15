//
//  StudentCell.swift
//  IHC
//
//  Created by Rubens Gondek on 11/15/16.
//  Copyright © 2016 Gondek. All rights reserved.
//

import UIKit

class StudentCell: UITableViewCell {

    @IBOutlet weak var msgText: UILabel!
    
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }

}
