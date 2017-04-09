import Foundation

//: [Previous](@previous)

//: ## Enum
struct Mage {
    let name: String
    let maxLifepoints: Int
    var lifepoints: Int

    // TODO
}

/*:
 * Callout(Excercise):
 \- Add a enum property `Gender` (male, female) to `Mage`\
 \- Make `Mage` accept male as default value in init
 */
//:
let margot = Mage(name: "Margot", gender: Mage.Gender.female, maxLifePoints: 4)
assert(margot.gender == .female)

let pascal = Mage(name: "Pascal", maxLifePoints: 8)
assert(pascal.gender == .male)

print("SUCCESS => you can continue")

//: [Next](@next)
