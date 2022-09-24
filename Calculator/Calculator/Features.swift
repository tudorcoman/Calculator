//
//  Features.swift
//  Calculator
//
//  Created by Tudor Coman on 24.09.2022.
//

import Foundation

enum Operator {
    case plus, minus, multiply, divide
}

func executeOperation(_ firstNumber: Int, secondNumber: Int, op: Operator) -> Int {
    switch op {
    case .plus: return firstNumber + secondNumber
    case .minus: return firstNumber - secondNumber
    case .multiply: return firstNumber * secondNumber
    default: return firstNumber / secondNumber
    }
}

protocol ControllerCalculator {
    func generalOperation(op: Operator)
}
