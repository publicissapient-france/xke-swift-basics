import Foundation

//: [Previous](@previous)

//: ## Class
class Mage {
    // TODO
}

//: * Callout(Excercise): Add properties to `Mage` (name, maxLifePoints, isAlive) class to make following lines compile
let mage = Mage(name: "Merlin", maxLifePoints: 20)

assert(mage.name == "Merlin")
assert(mage.maxLifepoints == 20)
assert(mage.isAlive == true)

print("SUCCESS => you can continue")

//: [Next](@next)
