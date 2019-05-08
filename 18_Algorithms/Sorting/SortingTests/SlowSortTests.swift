//
//  SlowSortTests.swift
//  Sorting
//
//  Created by Adrian Kosmaczewski on 09.02.17.
//  Copyright © 2017 Adrian Kosmaczewski. All rights reserved.
//

import XCTest

class SlowSortTests: XCTestCase {
    
    func testOrder() {
        var arr = randomArray(50, 10_000)
        slowSort(&arr)
        
        for (index, element) in arr.enumerated() {
            if index < (arr.count - 1) {
                XCTAssertLessThanOrEqual(element, arr[index + 1])
            }
        }
    }
    
    func testPerformance50() {
        let arr = randomArray(50, 100_000)
        
        measure {
            var copy = arr
            slowSort(&copy)
        }
    }
    
    func testPerformance100() {
        let arr = randomArray(100, 100_000)
        
        measure {
            var copy = arr
            slowSort(&copy)
        }
    }

    func testPerformance150() {
        let arr = randomArray(150, 100_000)
        
        measure {
            var copy = arr
            slowSort(&copy)
        }
    }
}
