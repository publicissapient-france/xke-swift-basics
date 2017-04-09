import Foundation

//: [Previous](@previous)

//: ## Guard

enum BuyError : Error {
    case notEnoughResources([Resource])
    case notBuyable
}

enum Resource : String {
    case wood
    case wire
    case metal
}

struct Item {
    var cost: [Resource:UInt]
}

//: - Callout(Excercise): Reimplement `buy:` (Chapter [Error handling](18%20Error%20handling)\) using guard
struct Mage {
    var resources: [Resource:UInt] = [:]

    mutating func buy(_ item: Item) throws {
        // TODO
    }
}

var mage = Mage(resources: [.wood: 6, .wire: 1, .metal: 5])
let expensiveItem = Item(cost: [.wood: 6, .metal: 6])

do {
    try mage.buy(expensiveItem)
    print("FAILURE => expected `mage.buy(expensiveItem)` to throw")
}
catch let BuyError.notEnoughResources(r) {
    print("missing resources: \(r)")
    print("SUCCESS => you can continue")
}

//: [Next](@next)
