import Foundation

//: [Previous](@previous)

/*:
 # LE LANGAGE ET LES CONSTRUCTIONS DE BASE
 */
//: ## Native Operators
let collections = [[5, 2, 7], [4, 8], [9, 1, 3]]
/*: Simple FlatMap */
let simpleCollections = collections.flatMap { return $0 }
print(simpleCollections)

/*: FlatMap combine with Filter*/
let onlyEven = collections.flatMap {
    intArray in intArray.filter { $0 % 2 == 0 }
}
print(onlyEven)

/*: Simplified FlatMap */
let onlyEvenBis = collections.flatMap { $0.filter { $0 % 2 == 0 } }
print(onlyEvenBis)

/*: Chaining */
let allSquared = collections.flatMap { $0.map { $0 * $0 } }
print(allSquared)

let sums = collections.map { $0.reduce(0, +) }
print(sums)

/*: FlatMap with User */
struct User {

    let email:String?
}

let users = [User(email: "fmirault@xebia.fr"), User(email: nil), User(email: nil), User(email: "xebia@xebia.fr")]
print(users.flatMap{ $0.email })

//: [Next](@next)
