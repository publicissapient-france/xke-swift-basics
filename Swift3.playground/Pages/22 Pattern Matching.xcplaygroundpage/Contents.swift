import Foundation

//: [Previous](@previous)

//: ## Pattern Matching
let response = 200
switch response {
case 200..<400:
    print("The request was successful")
case 400..<500:
    print("The request was unsuccessful")
default:
    print("Unrecognized response code")
}

/*: Switch with ranges case from tuple */
let serverResponse = (200, "OK")
switch serverResponse {
case (200..<400, _):
    print("Looks good")
case (400..<500, let description):
    print("You got an error : \(description)")
default:
    print("Unrecognized response code")
}

//: [Next](@next)
