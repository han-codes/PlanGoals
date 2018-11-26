//
//  CreateGoalVC.swift
//  goalpost-app
//
//  Created by Hannie Kim on 11/26/18.
//  Copyright © 2018 Hannie Kim. All rights reserved.
//

import UIKit

class CreateGoalVC: UIViewController {

    @IBOutlet weak var goalTextView: UITextView!
    @IBOutlet weak var shortTermBtn: UIButton!
    @IBOutlet weak var longTermBtn: UIButton!
    @IBOutlet weak var nextBtn: UIButton!
    
    override func viewDidLoad() {
        super.viewDidLoad()
     
    }
    
    @IBAction func shortTermBtnPressed(_ sender: Any) {
        
    }
    
    @IBAction func longTermBtnPressed(_ sender: Any) {
        
    }
    
    @IBAction func nextBtnPressed(_ sender: Any) {
    }
    
    @IBAction func backBtnPressed(_ sender: Any) {
        dismissDetail()
    }
}
