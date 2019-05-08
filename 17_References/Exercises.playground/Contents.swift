// tag::solution[]
protocol Readable {
    var read : Bool { get set }
}

func readNow(_ obj: Readable) {
    var local = obj
    local.read = true
//    obj.read = true // obj is a 'let' constant
}

struct Book : Readable {
    var title : String
    var author : String
    var isbn : Int
    var read = false
}

class Library : Readable {
    var address : String = ""
    var books = [Book]()
    var read = false
}

var library = Library()
var book = Book(title: "The Catcher in the Rye",
                author: "J. D. Salinger",
                isbn: 2352345,
                read: false)

readNow(library)
readNow(book)

print("Did you read this book? \(book.read)")
print("Did you read the entire library? \(library.read)")
// end::solution[]

