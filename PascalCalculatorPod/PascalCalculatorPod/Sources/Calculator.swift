//
//  PascalCalculator.swift
//  PascalCalculator
//
//  Created by Ario Liyan on 7/26/1402 AP.
//

import Foundation

public class Calculator {
    private var firstOperand: Double
    private var secondOperand: Double
    
    public init(firstOperand: Double, secondOperand: Double) {
        self.firstOperand = firstOperand
        self.secondOperand = secondOperand
    }
    
    
    public func add() -> Double {
        firstOperand + secondOperand
    }
    
    public func sub() -> Double {
        firstOperand - secondOperand
    }
    
    public func mul() -> Double {
        firstOperand * secondOperand
    }
    
    public func div() -> Double {
        firstOperand / secondOperand
    }
}
