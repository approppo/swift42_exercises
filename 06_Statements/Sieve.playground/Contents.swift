// tag::eratosthenes[]
import Foundation // for sqrt()

var max = 1000
var primes = Set(2...max)

// sqrt() takes and returns Double
var limit = Int(sqrt(Double(max)))

for n in 2...limit {
    var multiples = Set<Int>()
    for p in primes {
        if p == n {
            continue
        }
        if p % n == 0 {
            multiples.insert(p)
        }
    }
    primes.subtract(multiples)
}

primes.sorted()
primes.count
// end::eratosthenes[]

