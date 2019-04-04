// tag::bad[]
class Character {
    func attack() {
        print("attack!")
    }

    func castSpell() {
        print("cast spell!")
    }
}

enum Enemy {
    case none
    case dragon
    case knight
}

class Knight : Character {
    var enemy = Enemy.none

    override func castSpell() {
        fatalError("Knights do not cast spells!")
    }

    override func attack() {
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

class Princess : Character {
    override func attack() {
        print("martial arts!")
    }

    override func castSpell() {
        print("turn rock into monsters!")
    }
}

class Magician : Character {
    override func attack() {
        print("throw lightning!")
    }

    override func castSpell() {
        print("turn rock into monsters!")
    }
}
// end::bad[]


// tag::crash[]
let knight = Knight()
knight.enemy = .knight
knight.attack()
//knight.castSpell() // Crash!

let princess = Princess()
princess.attack()
princess.castSpell()

let magician = Magician()
magician.attack()
magician.castSpell()
// end::crash[]

