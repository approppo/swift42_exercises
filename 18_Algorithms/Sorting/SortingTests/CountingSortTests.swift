import XCTest

class CountingSortTests: XCTestCase {
    
    func testOrder() {
        var arr = randomArray(50, 10_000)
        countingSort(&arr)
        
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
            countingSort(&copy)
        }
    }
    
    func testPerformance100() {
        let arr = randomArray(100, 100_000)
        
        measure {
            var copy = arr
            countingSort(&copy)
        }
    }
    
    func testPerformance150() {
        let arr = randomArray(150, 100_000)
        
        measure {
            var copy = arr
            countingSort(&copy)
        }
    }
    
    func testPerformance500() {
        let arr = randomArray(500, 100_000)
        
        measure {
            var copy = arr
            countingSort(&copy)
        }
    }
    
    func testPerformance5k() {
        let arr = randomArray(5_000, 100_000)
        
        measure {
            var copy = arr
            countingSort(&copy)
        }
    }
    
    func testPerformance10k() {
        let arr = randomArray(10_000, 100_000)
        
        measure {
            var copy = arr
            countingSort(&copy)
        }
    }
    
    func testPerformance50k() {
        let arr = randomArray(50_000, 100_000)
        
        measure {
            var copy = arr
            countingSort(&copy)
        }
    }
    
    func testPerformance100k() {
        let arr = randomArray(100_000, 100_000)
        
        measure {
            var copy = arr
            countingSort(&copy)
        }
    }
    
    func testPerformance500k() {
        let arr = randomArray(500_000, 100_000)
        
        measure {
            var copy = arr
            countingSort(&copy)
        }
    }
    
//    func testPerformance1M() {
//        let arr = randomArray(1_000_000, 100_000)
//        
//        measure {
//            var copy = arr
//            countingSort(&copy)
//        }
//    }
}
