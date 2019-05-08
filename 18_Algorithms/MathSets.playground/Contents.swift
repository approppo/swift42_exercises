// Set operations taken from
// https://en.wikipedia.org/wiki/Set_(mathematics)
// Operator association groups taken from
// https://developer.apple.com/reference/swift/1851035-swift_standard_library_operators

// tag::alias[]
// Typealias for the whole exercise
typealias MathSet = Set<AnyHashable>

// end::alias[]

// Required for the cartesian product, adapted from
// http://stackoverflow.com/a/37324570
struct Pair<T: Hashable, U: Hashable> : Hashable, CustomStringConvertible {
    let first : T
    let second: U

    var hashValue : Int {
        return first.hashValue &* 31 &+ second.hashValue
    }

    var description: String {
        return "\(first), \(second)"
    }

    public static func == (lhs: Pair, rhs: Pair) -> Bool {
        return lhs.first == rhs.first && lhs.second == rhs.second
    }
}

// The empty set
let Ø = MathSet()

// tag::creation[]
// The "Universal" set
var U = MathSet()

// Creation operators
// Every time a new set is created, we add its contents to the
// universal set created above
prefix operator ⟨
prefix func ⟨ (array: [AnyHashable]) -> MathSet {
    for obj in array {
        U.insert(obj)
    }
    return MathSet(array)
}

postfix operator ⟩
postfix func ⟩ (array: [AnyHashable]) -> [AnyHashable] {
    return array
}

// end::creation[]


// tag::ops[]
// Intersection
infix operator ∩ : MultiplicationPrecedence
func ∩ (s1: MathSet, s2: MathSet) -> MathSet {
    return s1.intersection(s2)
}

// Union
infix operator ∪ : AdditionPrecedence
func ∪ (s1: MathSet, s2: MathSet) -> MathSet {
    return s1.union(s2)
}

// Belongs
infix operator ∈ : ComparisonPrecedence
func ∈ (obj: Any, set: MathSet) -> Bool {
    return set.contains(obj as! AnyHashable)
}

// end::ops[]

// Does not belong
infix operator ∉ : ComparisonPrecedence
func ∉ (obj: Any, set: MathSet) -> Bool {
    return !(obj ∈ set)
}

// Subset
infix operator ⊆ : ComparisonPrecedence
func ⊆ (s1: MathSet, s2: MathSet) -> Bool {
    return s1.isSubset(of: s2)
}

// Cardinality
prefix operator |
prefix func | (set: MathSet) -> Int {
    return set.count
}

postfix operator |
postfix func | (set: MathSet) -> MathSet {
    return set
}

// Relative complement
infix operator ∖ : MultiplicationPrecedence
func ∖ (s1: MathSet, s2: MathSet) -> MathSet {
    return s1.subtracting(s2)
}

// Absolute complement
postfix operator ′
postfix func ′ (set: MathSet) -> MathSet {
    return U ∖ set
}

// Symmetric difference
infix operator ∆ : AdditionPrecedence
func ∆ (s1: MathSet, s2: MathSet) -> MathSet {
    return s1.symmetricDifference(s2)
}

// Cartesian product
infix operator × : MultiplicationPrecedence
func × (s1: MathSet, s2: MathSet) -> MathSet {
    var result = Set<Pair<AnyHashable, AnyHashable>>()
    for obj1 in s1 {
        for obj2 in s2 {
            let pair = Pair(first: obj1, second: obj2)
            result.insert(pair)
        }
    }
    return result
}

// tag::sample[]
let A = ⟨[1, "alpha", "beta", "gamma", 23, 23]⟩
let B = ⟨["omega", "gamma", "delta", 23, 63, 1, 1, 1]⟩
let C = ⟨[1, "alpha"]⟩
let D = ⟨["Brazil", "Switzerland", "Austria"]⟩

let belongs = "alpha" ∈ A
let doesNotBelong = "Zambia" ∈ C
let intersection = A ∩ B
let union = A ∪ B
// end::sample[]

let isNotSubset = A ⊆ B
let isSubset = C ⊆ A
let cardinality = |A|
let subtracted = B ∖ A
let complement = A′
let symmetric = A ∆ B
let product = A × B
let noAlpha = "alpha" ∈ B
let yesAlpha = "alpha" ∉ B

// Print the whole universe
print(U)

// Asserting some basic properties of sets
assert(A == A                      , "A set is equal to itself")
assert(A != B                      , "A set is not equal to others")
assert(A ∩ B == B ∩ A              , "Intersection is commutative")
assert(A ∪ B == B ∪ A              , "Union is commutative")
assert(A ∪ A == A                  , "Union with itself is neutral")
assert(A ∪ Ø == A                  , "The empty set is neutral in union")
assert((C ⊆ A) && (C ∪ A) == A     , "Condition to be a subset")
assert((A ⊆ (A ∪ B))               , "Condition of inclusion")
assert(A ∖ A == Ø                  , "Removing a set from itself yields the empty set")
assert(A ⊆ U                       , "Any set is part of the Universal set")
assert(B ⊆ U                       , "Any set is part of the Universal set")
assert(C ⊆ U                       , "Any set is part of the Universal set")
assert(A ∪ A′ == U                 , "The union of a set with its complementary yields the universal set")
assert(|(A × B)| == |A| * |B|      , "The number of items in a product set is equal to the product of the number of items")
assert(A × Ø == Ø                  , "The empty set is the absorbing element of the product")
assert(A × (B ∪ C) == A × B ∪ A × C, "Product is distributive")
assert(A × B ∪ A × C == (A × B) ∪ (A × C), "Associative laws are applied correctly")

// De Morgan's Laws
assert((A ∪ B)′ == A′ ∩ B′         , "First law: the complement of A union B equals the complement of A intersected with the complement of B.")
assert((A ∩ B)′ == A′ ∪ B′         , "Second law: the complement of A intersected with B is equal to the complement of A union to the complement of B.")
