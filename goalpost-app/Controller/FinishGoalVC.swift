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
    @IBOutlet weak var pointsTextField: UITextField!
    
    var goalDescription: String?
    var goalType: GoalType?
    
    func initData(description: String, goalType type: GoalType) {
        self.goalDescription = description
        self.goalType = type
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        createGoalBtn.bindToKeyboard()      // button will move up along with the keyboard
    }
    
    @IBAction func createGoalBtnPressed(_ sender: Any) {
        if pointsTextField.text != "" {
            self.save { (finished) in
                if finished {
                    dismiss(animated: true, completion: nil)
                }
            }
        }
    }
    
    @IBAction func backBtnPressed(_ sender: Any) {
        dismissDetail()
    }
    
    func save(completion: (_ finished: Bool) -> ()) {
        guard let managedContext = appDelegate?.persistentContainer.viewContext else { return }
        let goal = Goal(context: managedContext)
        goal.goalDescription = goalDescription
        goal.goalType = goalType?.rawValue
        goal.goalCompletionValue = Int32(pointsTextField.text!)!
        goal.goalProgress = Int32(0)
        
        do {
            try managedContext.save()
            print("Successfully saved data.")
            completion(true)
        } catch {
            debugPrint("Could not save: \(error.localizedDescription)")
            completion(false)
        }
    }
}
