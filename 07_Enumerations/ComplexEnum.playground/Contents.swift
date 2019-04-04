// tag::complex[]
enum Country : String {
    case Switzerland = "Schweiz"
    case Germany = "Deutschland"
    case Italy = "Italia"
    case Austria = "Österreich"
    case France = "France"

    func translate() {
        print("\(self) = \(self.rawValue)")
    }
}

var country1 = Country.Switzerland
var country2: Country = .Austria

country1.translate()
country2.translate()
// end::complex[]

// tag::exhaustive[]
enum MessageType: String {
    case INFO = "This is an Info"
    case WARNING = "This is a Warning"
    case ERROR = "This is an Error!"
}

func sayIt(_ messageType: MessageType) {
    switch messageType {
    case .INFO, .WARNING:
        print("\(messageType): \(messageType.rawValue)")
    case .ERROR:
        print("ALERT!!! \(messageType): \(messageType.rawValue)")
    }
}

sayIt(.INFO)
sayIt(.WARNING)
sayIt(.ERROR)
// end::exhaustive[]
