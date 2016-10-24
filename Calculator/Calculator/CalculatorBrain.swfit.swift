//
//  CalculatorBrain.swfit.swift
//  Calculator
//
//  Created by ityike on 2016/10/25.
//  Copyright © 2016年 袁 峰. All rights reserved.
//

import Foundation

class CalculatorBrain
{
    private var accumnlator = 0.0
    
    func setOperand(_ operand: Double) {
        accumnlator = operand
        
    }
    
    func performOperation(_ symbol: String) {
        switch symbol {
        case "π":
            accumnlator = M_PI
        case "√":
            accumnlator = sqrt(accumnlator)
        default:
            break
        }
    }
    
    var result: Double {
        get {
            return 0.0
        }
    }
}
