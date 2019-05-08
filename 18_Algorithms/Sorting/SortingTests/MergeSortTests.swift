import XCTest

class MergeSortTests: XCTestCase {
    
    func testOrder() {
        let arr = randomArray(5, 10_000)
        let result = mergeSort(arr)
        
        for (index, element) in result.enumerated() {
            if index < (arr.count - 1) {
                XCTAssertLessThanOrEqual(element, result[index + 1])
            }
        }
    }
    
    func testPerformance50() {
        let arr = randomArray(50, 100_000)
        
        measure {
            _ = mergeSort(arr)
        }
    }
    
    func testPerformance100() {
        let arr = randomArray(100, 100_000)
        
        measure {
            _ = mergeSort(arr)
        }
    }
    
    func testPerformance150() {
        let arr = randomArray(150, 100_000)
        
        measure {
            _ = mergeSort(arr)
        }
    }
    
    func testPerformance500() {
        let arr = randomArray(500, 100_000)
        
        measure {
            _ = mergeSort(arr)
        }
    }

    func testPerformance5k() {
        let arr = randomArray(5_000, 100_000)
        
        measure {
            _ = mergeSort(arr)
        }
    }
    
    func testPerformance10k() {
        let arr = randomArray(10_000, 100_000)
        
        measure {
            _ = mergeSort(arr)
        }
    }
    
    func testPerformance50k() {
        let arr = randomArray(50_000, 100_000)
        
        measure {
            _ = mergeSort(arr)
        }
    }
    
    func testPerformance100k() {
        let arr = randomArray(100_000, 100_000)
        
        measure {
            _ = mergeSort(arr)
        }
    }
    
    func testPerformance500k() {
        let arr = randomArray(500_000, 100_000)
        
        measure {
            _ = mergeSort(arr)
        }
    }

//    func testPerformance1M() {
//        let arr = randomArray(1_000_000, 100_000)
//        
//        measure {
//            _ = mergeSort(arr)
//        }
//    }
}
