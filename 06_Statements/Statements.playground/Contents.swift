var age = 40

// tag::if[]
if age < 20 {
    print("minor")
}
else {
    print("adult")
}
// end::if[]


// tag::ifelseif[]
if age < 10 {
    print("child")
}
else if age < 20 {
    print("teenager")
}
else if age < 30 {
    print("young adult")
}
else {
    print("adult")
}
// end::ifelseif[]


// tag::switch[]
switch age {
case 0...9:
    print("child")
case 10...19:
    print("teenager")
case 20...29:
    print("young adult")
default:
    print("adult")
}
// end::switch[]


// tag::switchvar[]
switch age {
case 0...9:
    print("child")
case 10...19:
    print("teenager")
case let x where x >= 31 && x <= 40:
    print("the golden age: \(x)")
default:
    print("adult")
}
// end::switchvar[]


// tag::while[]
while age < 30 {
    print(age)
    age += 1
}
// end::while[]


// tag::repeat[]
age = 10
repeat {
    print(age)
    age += 1
} while age < 11
// end::repeat[]


// tag::for[]
let countries = ["Switzerland", "Italy", "Germany", "France", "Austria", "Liechtenstein"]

for country in countries {
    print(country)
}
// end::for[]


// tag::forseq[]
for number in 1...5 {
    print(number)
}
// end::forseq[]
