import Foundation

//: [Previous](@previous)

//: ## Associated Type
//: ### Example (with inheritance)
protocol Initializable {
    init()
}

class Pokemon<Power: Initializable> {

    func attack() -> Power {
        return Power()
    }
}

struct 🌧: Initializable { }
struct 🌩: Initializable { }
struct 🔥: Initializable { }

class Pikachu: Pokemon<🌩> {}
class Vaporeon: Pokemon<🌧> {}

let pikachu = Pikachu()
pikachu.attack() // 🌩

let vaporeon = Vaporeon()
vaporeon.attack() // 🌧

//: ### Example (without inheritance)
protocol PowerTrait {
    associatedtype Power: Initializable

    func attack() -> Power
}

extension PowerTrait {
    func attack() -> Power {
        return Power()
    }
}

struct Raichu: PowerTrait {
    typealias Power = 🌩
}

let raichu = Raichu()
raichu.attack() //🌩

struct Carapuce: PowerTrait {
    func attack() -> 🌧 {
        return 🌧()
    }
}

let carapuce = Carapuce()
carapuce.attack() //🌧

/*:
 - Callout(Excercise):
 Make `Archer` and `Mage` conform to `Player`\
 Add a `weapon` attribute on `Player`:\
 \- `Mage` can only use `Staff`\
 \- `Archer` can only use `Bow`
*/
//:

protocol Weapon { }

struct Staff : Weapon { }

struct Bow : Weapon { }

protocol Player {
    // TODO
}

struct Mage {
    // TODO
}

struct Archer {
    // TODO
}

let mage = Mage(weapon: Staff())
let aloy = Archer(weapon: Bow())

print("SUCCESS => you can continue")

//: [Next](@next)
