import Foundation


struct Person {
    var name : String
    var age : Int
    var gender : Character
    
    
    init(_ name: String, _ age : Int, _ gender: Character)
    {
        self.name = name
        self.age = age
        self.gender = gender
    }
    
    func display(){
        print("Name: \(self.name)\nAge: \(self.age)\nGender: \(self.age)")
    }
}

let foo = Person("Bikash Chauhan", 21, "M")
foo.display()




// Structs are immutable - mutating keyword can help us to change the value once set. For ex: currentSpeed value can be changed by the drive function just by mentioning keyword 'mutating' before drive function.
struct Car {
    var currentSpeed: Int
    mutating func drive(speed : Int)
    {
        "Driving..."
        currentSpeed = speed
    }
}


// Structures are of value type
var mutableCar = Car(currentSpeed: 20)
let copy = mutableCar
mutableCar.drive(speed: 25)
mutableCar.currentSpeed
copy.currentSpeed

// Inheritance is not valid in Structures

