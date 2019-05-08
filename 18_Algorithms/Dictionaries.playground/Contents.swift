// tag::definition[]
// This is how you define a dictionary with string keys and string values
var definitions = Dictionary<String, String>()

// You can also use this short syntax:
var prices = [String: Double]()

// You can enter values in a dictionary like this
definitions["Switzerland"] = "Country in central Europe..."
definitions["Argentina"] = "Country in South America..."
definitions["Jass"] = "National card game of Switzerland"
definitions["Whisky"] = "National drink of Scotland"

prices["Soap"] = 3.99
prices["TV"] = 999.99
prices["Plane ticket"] = 300.49
// end::definition[]


// tag::operations[]
// You can iterate over the values, just like with arrays
for (key, value) in prices {
    print("Item: \(key) costs \(value)")
}

// How many items does this dictionary have?
definitions.count

// Bring all the items whose values begin with "Country"
let countries = definitions.filter { (key, value) -> Bool in
    value.hasPrefix("Country")
}

// Bring all the data together
let keys = countries.map { (key, value) -> String in
    return "\(key): \(value)"
}

print(keys.joined(separator: ", "))
// end::operations[]
