import Foundation

//: [Previous](@previous)

//: ## Tuple
struct Mage {
    let name: String
    let maxStats: (lifepoints: Int, manapoints: Int)
    var stats: (lifepoints: Int, manapoints: Int)

    init(name: String, stats: (lifepoints: Int, manapoints: Int)) {
        self.name = name
        self.maxStats = stats
        self.stats = stats
    }
}

/*:
 * Callout(Excercise): Change `(max)LifePoints` into a stats tuple containing both lifepoints and manapoints
 */

let mage = Mage(name: "Dumbledore", stats: (lifepoints: 4, manapoints: 8))
print("SUCCESS => you can continue")

//: [Next](@next)
