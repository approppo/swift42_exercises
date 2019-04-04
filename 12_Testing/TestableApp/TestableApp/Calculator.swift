//
//  Calculator.swift
//  TestableApp
//
//  Created by Adrian Kosmaczewski on 07.02.17.
//  Copyright © 2017 Adrian Kosmaczewski. All rights reserved.
//

// tag::calc[]
import UIKit

/// Provides mathematical calculation services
public class Calculator: NSObject {

    /// This method returns the sum of the two values passed as parameter.
    ///
    /// - Parameters:
    ///   - a: The first value
    ///   - b: The second value
    /// - Returns: The sum of the first and second value
    public func add(_ a : Int, _ b : Int) -> Int {
        return a + b;
    }
}
// end::calc[]

