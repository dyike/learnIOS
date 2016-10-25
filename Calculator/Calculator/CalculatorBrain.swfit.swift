//
//  CalculatorBrain.swfit.swift
//  Calculator
//
//  Created by ityike on 2016/10/25.
//  Copyright © 2016年 袁 峰. All rights reserved.
//

import Foundation


func multiply(op1: Double, op2: Double) -> Double {
    return op1 * op2
}

class CalculatorBrain
{
    private var accumnlator = 0.0
    
    func setOperand(operand: Double) {
        accumnlator = operand
        
    }
    
    var operations: Dictionary<String,Operation> = [
        "π": Operation.Constant(M_PI),
        "e": Operation.Constant(M_E),
        "√": Operation.UnaryOperation(sqrt), //sqrt,
        "cos": Operation.UnaryOperation(cos), //cos,
        "✖️": Operation.BinaryOperation({ $0 * $1 }),
        "➗": Operation.BinaryOperation({ $0 / $1 }),
        "➕": Operation.BinaryOperation({ $0 + $1 }),
        "➖": Operation.BinaryOperation({ $0 - $1 }),
        "=": Operation.Equals
    ]
    
    enum Operation {
        case Constant(Double)
        case UnaryOperation((Double) -> Double)
        case BinaryOperation((Double, Double) -> Double)
        case Equals
    }
    func performOperation(symbol: String) {
        if let operation = operations[symbol] {
            switch operation {
            case .Constant(let value):
                accumnlator = value
            case .UnaryOperation(let function):
                accumnlator = function(accumnlator)
            case .BinaryOperation(let function):
                pending = PendingBinaryOperationInfo(binaryFunction: function, firstOperand: accumnlator)
            case .Equals:
                executePendingBinaryOperation()
            }
        }
    }
    
    private func executePendingBinaryOperation() {
        if pending != nil {
            accumnlator = pending!.binaryFunction(pending!.firstOperand, accumnlator)
            pending = nil
        }
    }
    
    private var pending: PendingBinaryOperationInfo?
    
    private struct PendingBinaryOperationInfo {
        var binaryFunction: (Double, Double) -> Double
        var firstOperand: Double
    }
    
    var result: Double {
        get {
            return accumnlator
        }
    }
}
