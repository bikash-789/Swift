import Foundation


// Example of variable storing function
let addFunc : (Int, Int) -> Int = {
    (lhs : Int, rhs : Int)->Int
    in lhs + rhs
}

let addString : (String, String) -> String = {
    (lhs : String, rhs : String) -> String in lhs + rhs
}


addFunc(23, 23)

// Closures
func customAddFunc(
    _ lhs : String,
    _ rhs : String,
    _ f : (String, String) -> String
) -> String {
    f(lhs, rhs)
}

customAddFunc("Hello", "World", addString)

// Trailing closures
customAddFunc("Bikash", "Chauhan") {
    (lhs, rhs) -> String in
    var s = "\(lhs)\n\(rhs)"; // semicolon is added cause it has multiple line
    s += " You're a boy!";
    print(s);
    return s
}

let ages = [30, 20, 19, 40]
ages.sorted (by: { (lhs: Int, rhs: Int) -> Bool in
    lhs < rhs
})

// Shortcut method to sort by descending/ascending
ages.sorted(by: <)
ages.sorted(by: >)

