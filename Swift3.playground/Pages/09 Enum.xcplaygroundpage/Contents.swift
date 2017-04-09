import Foundation

//: [Previous](@previous)

//: ## Enum
struct Mage {
    enum Gender {
        case male
        case female
    }

    let name: String
    let maxLifepoints: Int
    var lifepoints: Int
    let gender: Gender


    var isAlive: Bool {
        return self.lifepoints > 0
    }

    init(name: String, gender: Gender = .male, maxLifePoints: Int) {
        self.name = name
        self.maxLifepoints = maxLifePoints
        self.lifepoints = maxLifepoints
        self.gender = gender
    }
}

let mage = Mage(name: "Margot", gender: .female, maxLifePoints: 4)
print("Mage : \(mage), max HP : \(mage.maxLifepoints) ")

let defaultMage = Mage(name: "Pascal", maxLifePoints: 8)
print("Default Mage : \(defaultMage), max HP : \(defaultMage.maxLifepoints) ")



//: [Next](@next)
