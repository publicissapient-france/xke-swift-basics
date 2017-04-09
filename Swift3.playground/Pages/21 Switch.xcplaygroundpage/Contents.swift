import Foundation

//: [Previous](@previous)

//: ## Switch
let response = 200
switch response {
case 200:
    print("Looks good")
case 500:
    print("You got an error")
default:
    print("Unrecognized response code")
}

/*: Pattern matching with Strings */
let recurrence: String
let productIdentifier = "monthly"
switch productIdentifier {
case let x where x.hasSuffix("q"):
    recurrence = "Quarterly"
case let x where x.hasSuffix("m"):
    recurrence = "Monthly"
default:
    recurrence = "Yearly"
}

//: [Next](@next)
