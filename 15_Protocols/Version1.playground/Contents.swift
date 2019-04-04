// tag::version1[]
enum Enemy {
    case none
    case dragon
    case knight
}

class Knight {
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

let knight = Knight()
knight.enemy = .dragon
knight.attack()
// end::version1[]

