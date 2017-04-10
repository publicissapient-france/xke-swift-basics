import Foundation

//: [Previous](@previous)

//: ## Array
enum Resource : String {
    case wood
    case wire
    case metal
}

var resources: [Resource] = []

//: * Callout(Excercise): Add `wood` into `resources`
// TODO
assert(resources == [.wood])

//: * Callout(Excercise): Add `metal` into `resources`
// TODO
assert(resources == [.wood, .metal])

//: * Callout(Excercise): Remove first item from `resources`
// TODO
assert(resources == [.metal])

print("SUCCESS => you can continue")

//: [Next](@next)
