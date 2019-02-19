// tag::definition[]
// Optionals are defined using the desired type
// together with an interrogation mark at the end:
var opt : String? = nil
// end::definition[]


// tag::use[]
opt = "This is `opt`, a non-nil value!"

// Variables typed with as optional can hold "nil"
// This is not true for non-optional variables!
// Remove the comment below and see how the code reacts:

// opt = nil
// end::use[]


// tag::binding[]
if let temp = opt {
    // The variable "temp" is local to this block,
    // and is a non-optional variable of String type
    // which contains the non-nil value stored inside of 
    // the "opt" variable.
    print(temp)
}
else {
    print("Value is nil!")
}
// end::binding[]


// tag::coalescing[]
// The construction above can be simplified using the
// nil coalescing operator "??"
print(opt ?? "Value is nil!")
// end::coalescing[]


// tag::guard[]
func verify(_ o: String?) {
    guard o != nil else {
        print("Value is nil!")
        return // You must `return` or `throw` here!
    }
    print("Verified not nil: '\(o!)'")
}

verify(opt)
// end::guard[]


// tag::unboxing[]
// You can make optionals out of any type, including your own:
class Something {
    func execute() {
        print("execute()")
    }
}

// The ? operator after the instance name is used to
// make sure that the method execution only happens
// when the "thing" variable is not nil
var thing : Something? = Something()
thing?.execute()

// If thing were nil, then the method would not be executed
thing = nil
thing?.execute()
// end::unboxing[]

