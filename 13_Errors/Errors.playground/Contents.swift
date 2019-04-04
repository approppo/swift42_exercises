// tag::definition[]
enum DrivingProblem : Error, CustomStringConvertible {
    case storm
    case strike
    case sleep
    case hunger
    case blockade

    var description: String {
        switch self {
        case .storm:
            return "It was a dark and stormy night"
        default:
            return "Something else happened"
        }
    }
}
// end::definition[]


// tag::drive[]
func drive() throws -> Bool {
    // We should return "true" if we got there
    // but in the meantime... bad things happened.
    throw DrivingProblem.hunger
}
// end::drive[]


// tag::handling[]
do {
    let _ = try drive()
} catch DrivingProblem.hunger {
    print("Why not stop at a restaurant?")
} catch DrivingProblem.storm {
    print("It was a dark and stormy night")
} catch DrivingProblem.blockade {
    print("The protesters did not let me through")
} catch let error {
    print(error)
}
// end::handling[]

