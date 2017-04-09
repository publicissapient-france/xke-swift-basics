import Foundation

//: [Previous](@previous)

//: ## Tuple
struct Mage {
    let name: String

    // TODO
    var lifePoints: Int
    let maxLifePoints: Int
}

/*:
 * Callout(Excercise): Change `(max)LifePoints` into a stats tuple containing both lifepoints and manapoints
 */

let mage = Mage(name: "Dumbledore", stats: (lifepoints: 4, manapoints: 8))
print("SUCCESS => you can continue")

//: [Next](@next)
