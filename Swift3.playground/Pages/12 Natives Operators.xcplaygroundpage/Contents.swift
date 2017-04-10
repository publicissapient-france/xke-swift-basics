import Foundation

//: [Previous](@previous)

/*:
 # LE LANGAGE ET LES CONSTRUCTIONS DE BASE
 */
//: ## Native Operators
enum Resource : String {
    case wood
    case wire
    case metal
}

//: * Callout(Excercise: Map): Complete `mapToString` to return `Resource` as `String`
let resources: [Resource] = [.wood, .metal]

func mapToString(_ resources: [Resource]) -> [String] {
    // TODO
    return []
}

assert(mapToString(resources) == ["wood", "metal"], "[MAP] KO")
print("[MAP] OK")

//: * Callout(Excercise: Filter): Complete `resources:contain:` to return true if passed resource is present`
func resources(_ resources: [Resource], contain resource: Resource) -> Bool {
    // TODO
    return true
}

assert(resources([.wood], contain: .wire) == false)
assert(resources([.wood, .wire, .wire], contain: .wire) == true)
print("[FILTER] OK")

//: * Callout(Excercise: Reduce): Complete `count` to count resources
func count(_ resources: [Resource]) -> Int {
    // TODO
    return -1
}

assert(count([.wood, .wood, .metal, .metal]) == 4, "[REDUCE] KO")
print("[REDUCE] OK")

print("SUCCESS => you can continue")

//: [Next](@next)
