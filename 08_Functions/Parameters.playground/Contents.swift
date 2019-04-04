// tag::named[]
func parameterName(param: String) {
    print("Parameter is: '\(param)'")
}

parameterName(param: "First")
// end::named[]


// tag::many[]
func manyParameters(first: String, second: Double?, third: Bool) {
    print("Parameters are: '\(first)', '\(String(describing: second))', '\(third)'")
}

manyParameters(first: "First", second: 123.45, third: false)
// end::many[]


// tag::alias[]
func aliasedName(with param: String) {
    print("Aliased parameter is: '\(param)'")
}

aliasedName(with: "Second")
// end::alias[]


// tag::without[]
func withoutName(_ param: String) {
    print("Parameter passed without name: '\(param)'")
}

withoutName("Third")
// end::without[]


// tag::multiple[]
func multipleParameters(like numbers: Int...) {
    print("The parameters are: \(numbers)")
}

multipleParameters(like: 1, 56, 78, 43, 574)
// end::multiple[]


// tag::default[]
func printPerson(name: String = "John", age: Int = 32) {
    print("Person: \(name), \(age) years old")
}

printPerson()
printPerson(age: 45)
printPerson(name: "Peter")
printPerson(name: "Peter", age: 56)
// end::default[]


// tag::inout[]
func addVAT(_ price: inout Double) {
    // Add the VAT
    price = price + (price * 0.08)
}

var price = 100.0;
addVAT(&price)
print("The price with VAT is: \(price)")
// end::inout[]

