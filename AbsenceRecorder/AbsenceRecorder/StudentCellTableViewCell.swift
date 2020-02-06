//
//  StudentCellTableViewCell.swift
//  AbsenceRecorder
//
//  Created by Hassall, Oscar (HWTA) on 06/02/2020.
//  Copyright © 2020 Hassall, Oscar (HWTA). All rights reserved.
//

import UIKit

class StudentCellTableViewCell: UITableViewCell {

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)
        
        self.accessoryType = selected ? .checkmark : .none
        
        // Configure the view for the selected state
    }

}
