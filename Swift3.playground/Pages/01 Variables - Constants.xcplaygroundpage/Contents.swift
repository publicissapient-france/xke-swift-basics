import Foundation

/*:
 # LES TYPES FONDAMENTAUX
 ## Variables and constants
 */

/*:
 * Callout(Excercise):
 \- Declare a mutable var `strength` with value 10\
 \- Declare a **immutable** var `maxStrength` with value 100
*/

var strength: Int = 10
let maxStrength: Int = 100

var isStrong: Bool {
    if strength > 10 {
        return true
    } else {
        return false
    }
}

strength += 20

assert(strength == 30)
assert(maxStrength == 100)
print("SUCCESS => you can continue")

//: [Next](@next)
