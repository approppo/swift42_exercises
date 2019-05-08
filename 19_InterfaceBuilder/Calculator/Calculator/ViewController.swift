//
//  ViewController.swift
//  Calculator
//
//  Created by Adrian Kosmaczewski on 09.02.17.
//  Copyright © 2017 Adrian Kosmaczewski. All rights reserved.
//

import UIKit

enum CalculationError : Error {
    case divisionByZero
}

enum Operation {
    case none
    case addition
    case subtraction
    case multiplication
    case division
    case equal
    case ac
    
    func calculate(_ a: Double, _ b: Double) throws -> Double? {
        switch self {
        case .addition:
            return a + b
        case .subtraction:
            return a - b
        case .multiplication:
            return a * b
        case .division:
            if b == 0 {
                throw CalculationError.divisionByZero
            }
            return a / b
        default:
            return nil
        }
    }
}

class ViewController: UIViewController {
    
    var primary : Double = 0.0 {
        didSet {
            display.text = "\(primary)"
        }
    }
    
    var secondary : Double = 0.0
    
    var currentOperation = Operation.none

    @IBOutlet weak var display: UILabel!

    @IBAction func ac(_ sender: Any) {
        enter(operation: .ac)
    }

    @IBAction func mc(_ sender: Any) {
    }

    @IBAction func mr(_ sender: Any) {
    }

    @IBAction func ma(_ sender: Any) {
    }
    
    @IBAction func zero(_ sender: Any) {
        enter(number: 0)
    }
    
    @IBAction func one(_ sender: Any) {
        enter(number: 1)
    }
    
    @IBAction func two(_ sender: Any) {
        enter(number: 2)
    }
    
    @IBAction func three(_ sender: Any) {
        enter(number: 3)
    }
    
    @IBAction func four(_ sender: Any) {
        enter(number: 4)
    }
    
    @IBAction func five(_ sender: Any) {
        enter(number: 5)
    }
    
    @IBAction func six(_ sender: Any) {
        enter(number: 6)
    }
    
    @IBAction func seven(_ sender: Any) {
        enter(number: 7)
    }
    
    @IBAction func eight(_ sender: Any) {
        enter(number: 8)
    }
    
    @IBAction func nine(_ sender: Any) {
        enter(number: 9)
    }
    
    @IBAction func divide(_ sender: Any) {
        enter(operation: .division)
    }
    
    @IBAction func multiply(_ sender: Any) {
        enter(operation: .multiplication)
    }
    
    @IBAction func subtract(_ sender: Any) {
        enter(operation: .subtraction)
    }
    
    @IBAction func add(_ sender: Any) {
        enter(operation: .addition)
    }
    
    @IBAction func equal(_ sender: Any) {
        enter(operation: .equal)
    }
    
    private func enter(number: Int) {
        primary = primary * 10 + Double(number)
    }
    
    private func enter(operation op: Operation) {
        if op == .ac {
            reset()
        }
        else if op == .equal {
            do {
                let value = try currentOperation.calculate(secondary, primary)
                if let result = value {
                    primary = result
                    currentOperation = .none
                }
            }
            catch {
                display.text = "Error"
            }
        }
        else {
            currentOperation = op
            secondary = primary
            primary = 0.0
        }
    }
    
    internal func reset() {
        primary = 0.0
        secondary = 0.0
        currentOperation = .none
    }
}
