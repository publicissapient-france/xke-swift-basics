import UIKit

//: [Previous](@previous)

//: ## Closures
let array = [10, 20, 30]
var reversed = array.sorted(by: {(s1: Int, s2: Int) -> Bool in return s1 > s2})
reversed = array.sorted(by: {s1, s2 in return s1 > s2})
reversed = array.sorted(by: {s1, s2 in s1 > s2})
reversed = array.sorted(by: {$0 > $1})
reversed = array.sorted(by: >)

/*: Closure inside UIView */
UIView.animate(withDuration: 0.25, animations: {

}, completion: { finished in

})

/*: Custom closure */
func showNameThenRunClosure(name: String, closure: () -> ()) {
    print("Hello, \(name)!")
    closure()
}
showNameThenRunClosure(name: "Fabien", closure: {
    print("Method complete")
})

/* Custom closure with params */
typealias GenericClosure = (String, Int) -> Bool

func showNameThenRunClosure(name: String, closure: GenericClosure) {
    print("Name : \(name)")
    print(closure("Julien", 20))
}

showNameThenRunClosure(name: "Fabien", closure: { name, age in
    print("Name : \(name)")
    return age > 20
})




//: [Next](@next)
