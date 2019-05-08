 Person {
    var name: String
    var age: Int
    
    init(name: String, age: Int) {
        self.name = name
        self.age = age
    }
    
    func speak() -> String {
        return "Hi! My name is \(name), I am \(age) years old."
    }
    
    func increase() {
        age += 1
    }
}

var peter = Person(name: "Peter", age: 30)
peter.speak()
peter.increase()
peter.speak()

let john = Person(name: "John", age: 20)
john.speak()
john.increase()
john.speak()
