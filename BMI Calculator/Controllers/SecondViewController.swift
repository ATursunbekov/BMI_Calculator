//
//  SecondViewControler.swift
//  BMI Calculator
//
//  Created by Alikhan Tursunbekov on 15/11/23.
//  Copyright © 2023 Angela Yu. All rights reserved.
//

import Foundation
import UIKit

class SecondViewController: UIViewController {
    
    var bmiVal: CalculatorBrain?
    
    @IBOutlet weak var resultBMI: UILabel!
    @IBOutlet weak var advice: UILabel!
    override func viewDidLoad() {
        super.viewDidLoad()
        if let val = bmiVal {
            resultBMI.text = val.getBMI()
            advice.text = val.getAdvice()
            view.backgroundColor = val.getColor()
        }
    }
    @IBAction func recalculatePressed(_ sender: Any) {
        dismiss(animated: true)
    }
}
