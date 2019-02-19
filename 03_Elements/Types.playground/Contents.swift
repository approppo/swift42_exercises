import UIKit

// tag::declaration[]
let pi = 3.14
var name = "Robert"
let answer = true
var age = 34
// end::declaration[]


// tag::inference[]
type(of: pi)
type(of: name)
type(of: answer)
type(of: age)
// end::inference[]


// tag::explicit[]
var number : Float = 45
type(of: number)
// end::explicit[]


// tag::operations[]
// Valid operations
name.lengthOfBytes(using: .utf8)
number.distance(to: 34)

// Invalid operations

//name.add("Smith")
//number.lengthOfBytes(using: .utf8)

// end::operations[]


// tag::any[]
var whatever : Any = 45
type(of: whatever)
whatever = true
type(of: whatever)
whatever = "A String"
type(of: whatever)
// end::any[]


// tag::coercion[]
var view : UIView = UILabel()
var label = view as! UILabel
label.text = "Type coerced!"
// end::coercion[]

