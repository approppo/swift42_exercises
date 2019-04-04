// tag::solution[]
protocol CanFly {
    func fly()
}

extension CanFly {
    func fly() {
        print("I believe I can fly!")
    }
}

protocol Vertebrate {
    var cervicalVertebrae : Int { get }
}

protocol Invertebrate {

}

class Animal {

}

class Human : Animal, Vertebrate, CanFly {
    var cervicalVertebrae : Int {
        return 7
    }

    func fly() {
        print("Only using airplanes!")
    }
}

class Eagle : Animal, Vertebrate, CanFly {
    var cervicalVertebrae : Int {
        return 19
    }
}

class Mosquito : Animal, Invertebrate, CanFly {

}

let m = Mosquito()
m.fly()

let h = Human()
print("Cervical vertebrae: \(h.cervicalVertebrae)")
h.fly()

let e = Eagle()
print("Cervical vertebrae: \(e.cervicalVertebrae)")
e.fly()
// end::solution[]

