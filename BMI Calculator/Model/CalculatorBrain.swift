//
//  CalculatorBrain.swift
//  BMI Calculator
//
//  Created by Alikhan Tursunbekov on 15/11/23.
//  Copyright © 2023 Angela Yu. All rights reserved.
//

import UIKit

struct CalculatorBrain {
    var bmi: BMI?
    
    mutating func calculateBMI(weight: Float, height: Float) {
        let bmiVal =  weight / pow(height, 2)
        var advice = ""
        var color = UIColor.white
        
        if bmiVal < 18.5 {
            advice = "Eate more snacs!"
            color = UIColor.systemBlue
        } else if bmiVal < 24.9 {
            advice = "Keep your condition same!"
            color = UIColor.systemGreen
        } else {
            advice = "Eat less food and do more exercises!"
            color = UIColor.systemRed
        }
        
        bmi = BMI(value: bmiVal, advice: advice, color: color)
    }
    
    func getBMI() -> String {
        guard let calculation = bmi  else {
            return "No data"
        }
        return String(format: "%.1f", calculation.value)
    }
    
    func getAdvice() -> String {
        return bmi?.advice ?? "No data"
    }
    
    func getColor() -> UIColor {
        return bmi?.color ?? .white
    }
}
