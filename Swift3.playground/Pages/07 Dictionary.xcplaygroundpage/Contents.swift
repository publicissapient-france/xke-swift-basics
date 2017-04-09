import Foundation

//: [Previous](@previous)

//: ## Dictionary
enum Resource : String {
    case wood
    case wire
    case metal
}

var resources: [Resource:UInt] = [:]

/*:
 * Callout(Excercise):
  Add 4 woods\
 Add 5 metals
*/
resources[.wood] = 4
resources[.metal] = 5


assert(resources[.wood] == 4)
assert(resources[.metal] == 5)

print("SUCCESS => you can continue")

//: [Next](@next)
