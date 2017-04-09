import Foundation

//: [Previous](@previous)

//: ## Error handling
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

/*:
 - Callout(Exercise): Implement `buy` method
*/

struct Mage {
    var resources: [Resource:UInt] = [:]

    // Throws an error if mage has not enough resource to buy item. Otherwise remove resources from mage
    mutating func buy(_ item: Item) throws {
        var remainingResources = self.resources
        var missingResources: [Resource] = []

        for (resource, qty) in item.cost {
            if resources[resource] == nil || qty > resources[resource]! {
                missingResources.append(resource)
            }
            else {
                remainingResources[resource] = remainingResources[resource]! - qty
            }
        }

        if !missingResources.isEmpty {
            throw BuyError.notEnoughResources(missingResources)
        }

        self.resources = remainingResources
    }
}

var mage = Mage(resources: [.wood: 6, .wire: 1, .metal: 5])
let cheapItem = Item(cost: [.wire: 1])
let expensiveItem = Item(cost: [.wood: 6, .metal: 6])

do {
    try mage.buy(cheapItem)
    try mage.buy(expensiveItem)
    print("FAILURE => expected `mage.buy(expensiveItem)` to throw")
}
catch let BuyError.notEnoughResources(r) {
    print("missing resources: \(r)")
    print("SUCCESS => you can continue")
}


//: [Next](@next)
