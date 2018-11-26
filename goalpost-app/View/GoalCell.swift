//
//  GoalCell.swift
//  goalpost-app
//
//  Created by Hannie Kim on 11/26/18.
//  Copyright © 2018 Hannie Kim. All rights reserved.
//

import UIKit

class GoalCell: UITableViewCell {
    
    @IBOutlet weak var goalDescriptionLbl: UILabel!
    @IBOutlet weak var goalTypeLbl: UILabel!
    @IBOutlet weak var goalProgressLbl: UILabel!
    
    func configureCell(description: String, type: GoalType, progressAmount: Int) {
        self.goalDescriptionLbl.text = description
        self.goalTypeLbl.text = type.rawValue
        self.goalProgressLbl.text = String(describing: progressAmount)
    }
}
