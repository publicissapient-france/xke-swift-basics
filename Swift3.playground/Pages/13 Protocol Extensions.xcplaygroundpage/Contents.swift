import Foundation

//: [Previous](@previous)

//: ## Protocol Extensions

//: ### Examples
extension String {

    var localized: String {
        return self.localized("")
    }

    func localized(_ comment: String = "") -> String {
        return NSLocalizedString(self, comment: comment)
    }

    func toArrayOfElements() -> [String] {
        return self.components(separatedBy: ", ")
    }
}

extension Sequence where Iterator.Element == String {
    func toInt() -> [Int] {
        return self.map {
            Int($0)!
        }
    }
}

//: - Callout(Exercise): Add method `add:qty` (from previous exercise) on Dictionary using extension **only** when `Dictionary<Resource, UInt>`
enum Resource : String {
    case wood
    case wire
    case metal
}

// TODO

var resources: [Resource:UInt] = [.wood: 3, .wire: 4]
resources.add(.wood, qty: 1)
resources.add(.metal, qty: 5)

assert(resources[.wood] == 4)
print("SUCCESS => you can continue")

//: [Next](@next)
