// tag::sample[]
protocol Modifiable {
    var value : Int { get set }
    mutating func increase()
}

extension Modifiable {
    mutating func increase() {
        value += 100
    }
}

struct Struct : Modifiable {
    var value = 0
}

class Class : Modifiable {
    var value = 0
}

var s1 = Struct()
var s2 = s1

var c1 = Class()
var c2 = c1

s1.increase()
c1.increase()

print(s1.value)
print(s2.value)
print(c1.value)
print(c2.value)

assert(s1.value != s2.value)
assert(c1.value == c2.value)
// end::sample[]

