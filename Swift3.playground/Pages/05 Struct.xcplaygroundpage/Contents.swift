import Foundation

//: [Previous](@previous)

//: ## Struct

struct Mage {
    let name: String
    let maxLifepoints: Int
    var lifepoints: Int

    var isAlive: Bool {
        return self.lifepoints > 0
    }

    init(name: String, maxLifePoints: Int) {
        self.name = name
        self.maxLifepoints = maxLifePoints
        self.lifepoints = maxLifepoints
    }
}

//: * Callout(Excercise): Add properties to `Mage` (name, maxLifePoints, isAlive) class to make following lines compile
let mage = Mage(name: "Merlin", maxLifePoints: 20)

assert(mage.name == "Merlin")
assert(mage.maxLifepoints == 20)
assert(mage.isAlive == true)

print("SUCCESS => you can continue")

//: [Next](@next)
