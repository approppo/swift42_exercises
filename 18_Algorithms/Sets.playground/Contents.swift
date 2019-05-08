// tag::definition[]
// Creating a set (there's no shortened syntax this time!)
// Pay attention to the fact that items CAN NOT BE DUPLICATES!
var set = Set<String>()
set.insert("Rogelio")
set.insert("Maria")
set.insert("John")
set.insert("Jane")
set.insert("Rogelio")

// Some countries here
var countries = Set(["Argentina", "Switzerland", "France", "Germany", "Switzerland"])

// This puts all the items together in a new set
let unifiedSet = countries.union(set)

// This yields an empty set
let emptySet = countries.intersection(set)
// end::definition[]
