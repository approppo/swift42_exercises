// tag::protocols[]
protocol Character {
    func attack()
}

protocol MagicBeing {
    func castSpell()
}
// end::protocols[]


// tag::flexible[]
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

    func castSpell() {
        print("turn rock into monsters!")
    }
}

class Magician : Character, MagicBeing {
    func attack() {
        print("throw lightning!")
    }

    func castSpell() {
        print("turn rock into monsters!")
    }
}
// end::flexible[]


let knight = Knight()
knight.enemy = .dragon
knight.attack()

let princess = Princess()
princess.attack()
princess.castSpell()

let magician = Magician()
magician.attack()
magician.castSpell()
