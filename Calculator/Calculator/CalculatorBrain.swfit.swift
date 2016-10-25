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
    
    var operations: Dictionary<String,Operation> = [
        "π": Operation.Constant(M_PI),
        "e": Operation.Constant(M_E),
        "√": Operation.UnaryOperation, //sqrt,
        "cos": Operation.UnaryOperation //cos,
    ]
    
    enum Operation {
        case Constant(Double)
        case UnaryOperation
        case BinaryOperation
        case Equals
    }
    func performOperation(_ symbol: String) {
        if let operation = operations[symbol] {
            switch operation {
            case .Constant(let value):
                accumnlator = value
            case .UnaryOperation:
                break
            case .BinaryOperation:
                break
            case .Equals:
                break
            }
        }

//        switch symbol {
//        case "π":
//            accumnlator = M_PI
//        case "√":
//            accumnlator = sqrt(accumnlator)
//        default:
//            break
//        }
    }
    
    var result: Double {
        get {
            return accumnlator
        }
    }
}
