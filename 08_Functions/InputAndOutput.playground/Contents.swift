// tag::io[]
func greet(name: String) -> String {
    return "Hello \(name)!"
}
// end::io[]


// tag::greeting[]
let greeting = greet(name: "Roger")
print(greeting)
// end::greeting[]



// tag::other[]
func none() {
    // do something here, do not return anything
}

// No input, just output
func justReturnOne() -> Int {
    return 1;
}

// No output, just input
func takeTwoReturnNone(first: Int, second: Double) {
    // do something with `first` and `second`
}
// end::other[]


// tag::tuple[]
func multipleOutput() -> (String, Int) {
    return ("Stan", 35)
}

let (name, age) = multipleOutput()
print("\(name) is \(age) years old")
// end::tuple[]


