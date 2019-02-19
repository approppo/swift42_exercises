// tag::variables[]
var name = "John"
var age = 45
var greeting = "Name is \(name); age is \(age)"

print(greeting)
// end::variables[]


// tag::operations[]
// Length of a string
let count = greeting.count

// Enumerate each character on a string
for (i, c) in greeting.enumerated() {
    print("\(i): \(c)")
}

// Get the last 10 characters
let suffix = greeting.suffix(10)
String(suffix)

// Get the first 10 w
let prefix = greeting.prefix(10)
String(prefix)
// end::operations[]

// Get a substring starting at 8 until the semicolon
let start = greeting.index(greeting.startIndex, offsetBy: 8, limitedBy: greeting.endIndex)
let end = greeting.index(of: ";")
let range = start!..<end!
greeting[range]

