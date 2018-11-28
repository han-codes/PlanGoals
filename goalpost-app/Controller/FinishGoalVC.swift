//
//  FinishGoalVC.swift
//  goalpost-app
//
//  Created by Hannie Kim on 11/28/18.
//  Copyright © 2018 Hannie Kim. All rights reserved.
//

import UIKit

class FinishGoalVC: UIViewController {
    @IBOutlet weak var createGoalBtn: UIButton!
    
    
    var goalDescription: String?
    var goalType: GoalType?
    
    override func viewDidLoad() {
        super.viewDidLoad()
        createGoalBtn.bindToKeyboard()      // button will move up along with the keyboard
    }

    @IBAction func createGoalBtnPressed(_ sender: Any) {
    
    }
    
    @IBAction func pointsTxtField(_ sender: Any) {
    
    }
    
    func initData(description: String, goalType type: GoalType) {
        self.goalDescription = description
        self.goalType = type
    }
}
