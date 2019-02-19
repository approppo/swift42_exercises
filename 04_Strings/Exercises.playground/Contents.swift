// tag::inspecting[]
// Inspecting strings
let greeting = "Guten Tag!"
greeting[greeting.startIndex]
greeting[greeting.index(before: greeting.endIndex)]
greeting[greeting.index(after: greeting.startIndex)]
let index = greeting.index(greeting.startIndex, offsetBy: 7)
greeting[index]
// end::inspecting[]


// tag::replacingone[]
// Replacing first occurrence
var original = "Here's an asterisk *, an ampersand &, another asterisk ** and more ***"
if let theIndex = original.index(of: "*") {
    original.remove(at: theIndex)
    original.insert("&", at: theIndex)
}
print(original)
// end::replacingone[]

let begin = "123"
let suffix = "789"

let concatenatedString = begin + "456" + suffix


// tag::replacingall[]
// Replacing all occurrences
var correctedString = ""
for char in original {
    if char == "*" {
        correctedString = correctedString + "&"
    }
    else {
        correctedString += char.description
    }
}
print(correctedString)
// end::replacingall[]


// tag::palindrome[]
// Thanks Wikipedia for these examples!
let palindrome = "Die Liebe ist Sieger; stets rege ist sie bei Leid."
// let palindrome = "In girum imus nocte et consumimur igni"
// let palindrome = "A man, a plan, a canal: Panama!"
// let palindrome = "Doc, note: I dissent. A fast never prevents a fatness. I diet on cod."
var reversed = ""
var simplified = ""
let ignore: Set<Character> = ["!", "-", " ", ";", ":", ",", "."]
for char in palindrome {
    if !ignore.contains(char) {
        simplified += char.description.lowercased()
        reversed = char.description.lowercased() + reversed
    }
}
print(simplified == reversed)
// end::palindrome[]
