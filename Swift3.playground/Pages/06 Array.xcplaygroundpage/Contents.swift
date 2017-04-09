import Foundation

//: [Previous](@previous)

//: ## Array
enum Resource : String {
    case wood
    case wire
    case metal
}

//: ### Example
var mutableResources: [Resource] = []

mutableResources.append(.wood)
mutableResources.append(.metal)
mutableResources.remove(at: 1)

//: ### Exercises
//: * Callout(Excercise: Map): Complete `mapToString` to return `Resource` as `String`
let resources: [Resource] = [.wood, .metal]

func mapToString(_ resources: [Resource]) -> [String] {
    return resources.map { $0.rawValue }
}

assert(mapToString(resources) == ["wood", "metal"], "[MAP] KO")
print("[MAP] OK")

//: * Callout(Excercise: Filter): Complete `resources:contain:` to return true if passed resource is present`
func resources(_ resources: [Resource], contain resource: Resource) -> Bool {
    return resources.filter { $0 == resource }.count > 0
}

assert(resources([.wood], contain: .wire) == false)
assert(resources([.wood, .wire, .wire], contain: .wire) == true)
print("[FILTER] OK")

//: * Callout(Excercise: Reduce): Complete `count` to count resources
func count(_ resources: [Resource]) -> Int {
    return resources.reduce(0) { count, _ in count + 1 }
}

assert(count([.wood, .wood, .metal, .metal]) == 4, "[REDUCE] KO")
print("[REDUCE] OK")

print("SUCCESS => you can continue")

//: [Next](@next)
