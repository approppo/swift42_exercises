import Foundation

// tag::trans[]
// Generic type for functions that take and return strings
typealias Transformation = (String) -> String
// end::trans[]


// tag::compose[]
// This is a function that takes functions as a parameter
// and returns another function!
func compose(_ func1: @escaping Transformation,
             _ func2: @escaping Transformation) -> Transformation {
    return { string in
        return func1(func2(string))
    }
}
// end::compose[]


// tag::manycompose[]
func compose(_ functions: Transformation ...) -> Transformation {
    var operation : Transformation = identity
    for function in functions {
        operation = compose(function, operation)
    }
    return operation
}
// end::manycompose[]



// Some common string transformations
func identity(_ string: String) -> String {
    return string
}

// Adapted from
// http://stackoverflow.com/a/26964491
func stripWhitespace(_ string: String) -> String {
    return string.components(separatedBy: CharacterSet.whitespacesAndNewlines)
        .filter { !$0.isEmpty }.joined()
}

// tag::examples[]
func uppercase(_ string: String) -> String {
    return string.uppercased()
}

func lowercase(_ string: String) -> String {
    return string.lowercased()
}

func sort(_ string: String) -> String {
    var arr = Array(string)
    arr.sort()
    return String(arr)
}
// end::examples[]

func uniq(_ string: String) -> String {
    let arr = Array(string)
    let set = Set(arr)
    return String(set)
}

// Adapted from
// http://stackoverflow.com/a/24029847
func shuffle(_ string: String) -> String {
    var arr = Array(string)
    let c = arr.count
    guard c > 1 else { return string }

    for (firstUnshuffled , unshuffledCount) in zip(arr.indices, stride(from: c, to: 1, by: -1)) {
        let d = Int(arc4random_uniform(UInt32(unshuffledCount)))
        guard d != 0 else { continue }
        let i = arr.index(firstUnshuffled, offsetBy: d)
        arr.swapAt(firstUnshuffled, i)
    }

    return String(arr)
}

// tag::assign[]
// Variables holding functions
var func1 : Transformation = uppercase
var func2 : Transformation = sort
var empty = { (string : String) in
    return ""
}
// end::assign[]


// tag::simplecompose[]
// Let us compose some functions now
var composed = compose(func1, func2)
composed("Roger Federer")
// end::simplecompose[]


// tag::complexcompose[]
composed = compose(stripWhitespace, lowercase, uppercase, sort, uniq, identity, shuffle)
composed("Stan Wawrinka")
// end::complexcompose[]


// Adapted from
// http://stackoverflow.com/a/26845710
// This function does not conform to the "Operation" type
// because it takes an `Int`, not a `String`
func randomString(length: Int) -> String {
    let letters : NSString = "abcdefghijklmnopqrstuvwxyzABCDEFGHIJKLMNOPQRSTUVWXYZ0123456789"
    let len = UInt32(letters.length)
    var randomString = ""
    for _ in 0 ..< length {
        let rand = arc4random_uniform(len)
        var nextChar = letters.character(at: Int(rand))
        randomString += NSString(characters: &nextChar, length: 1) as String
    }
    return randomString
}

// The code below thereby throws an error
// let doesNotWork = compose(randomString, shuffle)

