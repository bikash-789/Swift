import Foundation

// Protocols in Swift

// It's like abstract class, in which body of a method should be defined at the class which inherits it
protocol CanBreathe {
    func breathe()
}


// For ex: Animal class inherits protocol = CanBreathe
// Therefore, it should define it here
struct Animal : CanBreathe {
    func breathe() {
        "Animal breathing..."
    }
}

struct Person : CanBreathe {
    func breathe() {
        "Person breathing..."
    }
}

let dog = Animal()
dog.breathe()


// Other method to define Protocol methods is by using 'extension' keyword

protocol CanJump{
    func jump()
}

extension CanJump {
    func jump(){
        "Jumping..."
    }
}

struct Cat : CanJump {
    func jump() {
        print("Cat is jumping..")
    }
}

var c = Cat()
c.jump()


// Getters and Setters
protocol HasName {
    var name : String {get}
    var age : Int {get set}
}

struct Dog : HasName {
    let name : String
    var age : Int
}

var woof = Dog(
    name: "Woof",
    age: 2
)


woof.age
woof.age += 1
woof.name
woof.age


protocol Vehicle{
    var speed : Int {get set}
    mutating func increaseSpeed(by value : Int)
}

extension Vehicle {
    mutating func increaseSpeed(by value: Int)
    {
        self.speed += value
    }
}


struct Bike : Vehicle {
    var speed : Int
    init(){
        self.speed = 0
    }
}

var bike = Bike()
bike.speed
bike.increaseSpeed(by: 10)
bike.speed


// Check whether the object conform to given protocol with the help of 'is' keyword

func describe(obj : Any)
{
    if obj is Vehicle {
        "Obj conforms to the Vehicle protocol"
    }
    else {
        "Obj does not conforms to the Vehicle protocol"
    }
}
describe(obj: bike)



func increaseSpeedIfVehicle (
    obj : Any
){
    if var vehicle = obj as? Vehicle {
        vehicle.speed
        vehicle.increaseSpeed(by: 10)
        vehicle.speed
    }
    else {
        "This was not a vehicle"
    }
}
increaseSpeedIfVehicle(obj: bike)
