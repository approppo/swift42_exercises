// tag::creation[]
// Creating strings
var strings = Array<String>()

// Shortened syntax
var stringsAgain = [String]()

// Initialized with repeated values
var babble = Array<String>(repeating: "blah", count: 4)

// The Justice League
var superheroes = ["Superman", "Wonder Woman", "Flash", "Batman"]

// Beware of inflation
var prices : [Double] = [0.56, 0.10, 299.99, 9.99, 55.99, 100.00]
// end::creation[]



// tag::using[]
// Sorting strings
superheroes.sort()

// How many items?
babble.count

// Filtering values
let premium = prices.filter { value -> Bool in
    value > 50.0
}
print("\(premium)")
// end::using[]


// tag::iterating[]
// Iterating
for hero in superheroes {
    print(hero)
}

// Another way to iterate
superheroes.forEach { hero in
    print(hero)
}
// end::iterating[]


// tag::mapping[]
// Mapping
let league = superheroes.map { hero -> String in
    return hero.uppercased()
}
// end::mapping[]


// tag::joining[]
// Joining all the elements with a separator
let movieName = league.joined(separator: " vs. ")
// end::joining[]
