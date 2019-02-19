var name1 = "John"

// The instruction below yields an error
// name1 = nil

var name2 : String? = ""
// name2 = nil // no problem!

// Branching
if let name = name2 {
    print("Your name is \(name)")
}
else {
    print("We do not know your name!")
}

// What about the empty string?
if let name = name2 {
    // We can reuse the `name` variable here, because it
    // is local to this context and does not collide
    // with the previous one.
    if name.isEmpty {
        print("Again, what was your name?")
    }
    else {
        print("Ahhhh… welcome \(name)")
    }
}
else {
    print("Still no idea who you are!")
}
