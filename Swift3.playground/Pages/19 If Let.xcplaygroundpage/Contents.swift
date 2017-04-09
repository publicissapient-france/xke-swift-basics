import Foundation

//: [Previous](@previous)

/*:
 # CONTROL FLOW
 */

//: ## If let
enum Resource : String {
    case wood
    case wire
    case metal
}

//: - Callout(Excercise): Reimplement `add:qty` (Chapter [Protocol Extensions](16%20Protocol%20Extensions)\) using if let

extension Dictionary where Key == Resource, Value == UInt {
    mutating func add(_ resource: Resource, qty: UInt) {
        // TODO
    }
}

var resources: [Resource:UInt] = [.wood: 3, .wire: 4]
resources.add(.wood, qty: 1)
resources.add(.metal, qty: 5)

assert(resources[.wood] == 4)
print("SUCCESS => you can continue")


//: [Next](@next)
