// tag::tuples[]
// Define a property of the tuple type
let tuple: (String, Int) = ("age", 40)

// Tuples may be multi-dimensional
let multiTuple: (String, (Int, Double)) = ("age", (40, 3.75))

// You can also name the parameters of a tuple, names are part of the type
let namedTuple = (age: 30, name: "Adrian")
print("\(namedTuple.name) is \(namedTuple.age) years old")
// end::tuples[]

// tag::tuples_typealiases[]
// Typealiases make tuples easier to work with
typealias Tuple = (String, Int)

let a : Tuple = ("a", 1)
let b : Tuple = ("b", 1)

// You can access individual members in a tuple
print(a.0)
print(a.1)

// Or just print it in its entirety
print(b)
// end::tuples_typealiases[]

// tag::multiple[]
// You can also use tuples for multiple returns
func multipleReturn() -> Tuple {
    return ("c", 3)
}

// And you can assign several variables at once
let (c, three) = multipleReturn()

print(c)
print(three)
// end::multiple[]

