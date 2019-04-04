import Foundation

// tag::closure[]
// taken from https://docs.swift.org/swift-book/LanguageGuide/Closures.html
let names = ["Dänu", "Tinu", "Röschu"]

func backward(_ s1: String, _ s2: String) -> Bool {
    return s1 > s2
}
var reversedNames = names.sorted(by: backward)
print("\(reversedNames)")

// end::closure[]

// tag::closureexpression[]

reversedNames = names.sorted(by: { (s1: String, s2: String) -> Bool in return s1 > s2 } )
print("\(reversedNames)")

// inferring types
reversedNames = names.sorted(by: { (s1, s2) in return s1 > s2 } )
print("\(reversedNames)")

// shorthand argument names
reversedNames = names.sorted(by: { $0 > $1 } )
print("\(reversedNames)")
// end::closureexpression[]


// tag::trailingclosure[]

// trailing closure
reversedNames = names.sorted() { $0 > $1 }
print("\(reversedNames)")

// end::trailingclosure[]

