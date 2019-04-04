protocol Character {
    func attack()
}


// tag::extension[]
protocol MagicBeing {
    func castSpell()
}

extension MagicBeing {
    func castSpell() {
        print("turn rock into monsters!")
    }
}
// end::extension[]


// tag::game[]
enum Enemy {
    case none
    case dragon
    case knight
}

class Knight : Character {
    var enemy = Enemy.none

    func attack() {
        switch enemy {
        case .dragon:
            print("sword!")
        case .knight:
            print("duel!")
        default:
            print("no enemy to attack")
        }
    }
}

class Princess : Character, MagicBeing {
    func attack() {
        print("martial arts!")
    }
}

class Magician : Character, MagicBeing {
    func attack() {
        print("throw lightning!")
    }
}
// end::game[]


// tag::finally[]
let knight = Knight()
knight.enemy = .dragon
knight.attack()

let princess = Princess()
princess.attack()
princess.castSpell()

let magician = Magician()
magician.attack()
magician.castSpell()
// end::finally[]

