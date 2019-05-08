// tag::person[]
struct Person {
    var name : String
    var age : Int

    func greet() {
        print("I'm \(name), I'm \(age) years old")
    }
}

let susan = Person(name: "Susan", age: 35)
let john = Person(name: "John", age: 30)

susan.greet()
john.greet()
// end::person[]

