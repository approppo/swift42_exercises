//
//  CalculatorTests.swift
//  TestableApp
//
//  Created by Adrian Kosmaczewski on 07.02.17.
//  Copyright © 2017 Adrian Kosmaczewski. All rights reserved.
//

import XCTest

class CalculatorTests: XCTestCase {

    // tag::test[]
    func testAddition() {
        let calculator = Calculator()
        let result = calculator.add(1, 2)
        XCTAssertEqual(3, result, "1 + 2 = 3")
    }
    // end::test[]

}
