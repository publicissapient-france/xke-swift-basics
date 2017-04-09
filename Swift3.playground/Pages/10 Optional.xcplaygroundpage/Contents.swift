import Foundation

//: [Previous](@previous)

/*:
 # FONCTIONNALITÉS DE BASE
 */

//: ## Optional

/*:
 - Callout(Example):
 var optionalStr: String = nil
*/

/*:
 - Callout(Example):
 var optionalStr: String? = nil\
 print(optionalStr!)
*/

/*:
 - Callout(Example):
 var optionalStr: String? = "Hello World"\
 if optionalStr != nil {\
    print(optionalStr!)\
 }
 */

//: - Experiment: Test examples above and see what Playground tells you!

enum Resource : String {
    case wood
    case wire
    case metal
}

//: - Callout(Excercise): Implement `add:qty:to:` to add quantity of resource to resources
func add(_ resource: Resource, qty: UInt, to resources: [Resource:UInt]) -> [Resource:UInt] {
    var resources = resources

    if resources[resource] != nil {
        resources[resource] = resources[resource]! + qty
    }
    else {
        resources[resource] = qty
    }

    return resources
}


let resources = add(.wood, qty: 3, to: [:])
assert(resources[.wood] == 3, "FAILURE => resources should contain 3 woods")

print("SUCCESS => you can continue")

//: [Next](@next)
