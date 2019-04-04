// tag::solution[]
enum BakingBreadError : Error {
    case burnt
    case tooSalty
    case smelly
}

struct Bread {}

func bakeBread(flourGrams: Double,
               waterMililiters: Double,
               salt: Bool,
               ovenMinutes: Int) throws -> Bread {
    if flourGrams > waterMililiters {
        throw BakingBreadError.smelly
    }

    if ovenMinutes > 50 {
        throw BakingBreadError.burnt
    }

    if salt {
        throw BakingBreadError.tooSalty
    }

    return Bread()
}

do {
    let bread = try bakeBread(flourGrams: 600,
                              waterMililiters: 600,
                              salt: false,
                              ovenMinutes: 20)
    print("We have bread! \(bread)")
} catch let error {
    print("Error: \(error)")
}
// end::solution[]

