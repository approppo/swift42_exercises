import CoreFoundation

// tag::euclid1[]
func euclid1(a: Int, b: Int) -> Int {
    var resultA = a
    var resultB = b
    if(resultA == 0) {
        return resultB
    }
    else {
        while resultB != 0 {
            if(resultA > resultB) {
                resultA = resultA - resultB
            }
            else {
                resultB = resultB - resultA
            }
        }
    }
    return resultA
}

print(euclid1(a: 44, b: 12))
print(euclid1(a: 1071, b: 462))
print(euclid1(a: 10, b: 0))
// end::euclid1[]

// tag::mod[]
let mod1 = 42 % 5     // 2, because 42 = 8 x 5 + 2
let mod2 = 6567 % 324 // 87, because 6567 = 324 x 20 + 87
// end::mod[]

// tag::euclid2[]
func euclid2(a: Int, b: Int) -> Int {
    var resultA = a
    var resultB = b
    while resultB != 0 {
        let temp = resultB
        resultB = resultA % resultB
        resultA = temp
    }
    return resultA
}

print(euclid2(a: 44, b: 12))
print(euclid2(a: 1071, b: 462))
print(euclid2(a: 0, b: 10))
// end::euclid2[]


// tag::timer[]
// Adapted from
// https://stackoverflow.com/a/25022722/133764
func benchmark(operation: ()->()) -> Double {
    let startTime = CFAbsoluteTimeGetCurrent()
    operation()
    let timeElapsed = CFAbsoluteTimeGetCurrent() - startTime
    return Double(timeElapsed)
}

let time1 = benchmark {
    _ = euclid1(a: 10718765488, b: 46287)
}

let time2 = benchmark {
    _ = euclid2(a: 10718765488, b: 46287)
}
// end::timer[]

