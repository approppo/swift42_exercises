import XCTest

class InsertionSortTests: XCTestCase {
    
    func testOrder() {
        var arr = randomArray(50, 10_000)
        insertionSort(&arr)
        
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
            insertionSort(&copy)
        }
    }
    
    func testPerformance100() {
        let arr = randomArray(100, 100_000)
        
        measure {
            var copy = arr
            insertionSort(&copy)
        }
    }
    
    func testPerformance150() {
        let arr = randomArray(150, 100_000)
        
        measure {
            var copy = arr
            insertionSort(&copy)
        }
    }
    
    func testPerformance500() {
        let arr = randomArray(500, 100_000)
        
        measure {
            var copy = arr
            insertionSort(&copy)
        }
    }
    
    func testPerformance5k() {
        let arr = randomArray(5_000, 100_000)
        
        measure {
            var copy = arr
            insertionSort(&copy)
        }
    }
    
    func testPerformance10k() {
        let arr = randomArray(10_000, 100_000)
        
        measure {
            var copy = arr
            insertionSort(&copy)
        }
    }
    
//    func testPerformance50k() {
//        let arr = randomArray(50_000, 100_000)
//        
//        measure {
//            var copy = arr
//            insertionSort(&copy)
//        }
//    }
}
