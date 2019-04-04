// tag::country[]
enum Country {
    case Switzerland
    case Germany
    case Italy
    case Austria
    case France
    case England
}
// end::country[]


// tag::usage[]
var country1 = Country.France
var country2: Country = .Austria

func greet(_ country: Country) {
    switch country1 {
    case .Switzerland:
        print("Grüezi!")
    case .Germany:
        print("Hallo!")
    case .France:
        print("Salut!")
    case .Italy:
        print("Ciao!")
    case .Austria:
        print("Servus!")
    default:
        print("Do you speak English?")
    }
}

greet(country1)
greet(country2)
// end::usage[]
