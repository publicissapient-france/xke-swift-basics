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
\- Add 4 woods into `resources`\
\- Add 5 metals into `resources`
*/
//TODO

assert(resources[.wood] == 4)
assert(resources[.metal] == 5)

print("SUCCESS => you can continue")

//: [Next](@next)
