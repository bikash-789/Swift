import Foundation

// Extension in Swift

// Extension can be used to add functionality to existing class, structures, protocols
extension Int {
    func plusTwo() -> Int{
        self + 2
    }
}

let two = 2
two.plusTwo()


// Preserving the default constructors
struct Person{
    let firstName: String
    let lastName : String
    
}

extension Person{
    init(fullName: String)
    {
        let components = fullName.components(separatedBy: " ")
        self.init(firstName: components.first ?? fullName, lastName: components.last ?? fullName)
    }
}

let person = Person(fullName: "Foo Bar")
person.firstName
person.lastName




protocol GoesVroom{
    var vroomValue: String {get}
    func goVroom() -> String
}
