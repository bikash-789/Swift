import UIKit

var greeting = "Hello, playground"
print(greeting)

// variable
var highscore = 55

// constant
let x = 0

// float
var pi = 3.14
print(highscore)
print(x+5)
print(pi)

// Array
var ages = [21, 55, 19, 47, 22, 37, 88, 71]
var height = [1.02, 2.3, 4]
print(ages)
print(height)

for i in ages{
    print(i)
}

// size of array
ages.count
ages.first
ages.last

var oddNum : [Int] = []

print(oddNum)


// Set in Swift
var age = [19, 19, 12, 34, 48, 20]

var ageSet = Set(age)
print(ageSet)


print(ageSet.count)


// Hashable
print(ageSet.contains(19))
ageSet.insert(11)
print(ageSet.contains(17))
print(ageSet.contains(20))


// Dictionary
let devices : [String: String] = [
    "phone":"iPhone 13 Pro Max",
    "laptop": "2019 Macbook Pro",
    "buds": "Noise Air Buds Pro"
]

devices["phone"]


// Functions
func add(a:Int, b:Int) -> Int {
    return a+b
}

let a : Int = 4
let c : Int = 5

add(a: a, b: c)


func sayHello(name:String) -> Void {
    print("Hello "+name)
}

sayHello(name: "Bikash")


// If else
if a > 5 {
    print("Greater than 5")
}
else {
    print("Less than 5")
}

// Ternary operator
a>=5 ? print("Greater") : print("Less")



// For loops
let allStars = ["James", "Davis", "Harden", "Doncic", "Leonard"]

for player in allStars{
    print(player)
}

// Less than 25
for i in 0..<25{
    print(i)
}

// Less than equal to 25
for i in 0...25{
    print(i)
}

// random number
var randomInt : [Int] = []
for _ in 0..<25{
    let randomNum = Int.random(in: 0...100)
    randomInt.append(randomNum)
}

for i in 0..<25{
    print(randomInt[i])
}


// enum
//enum Phone{
//    case iPhone11Pro
//    case iPhoneSE
//    case pixel
//    case nokia
//}
//


// Raw value in enum

enum Phone: String{
    case iPhone11Pro = "This will be my next phone!"
    case iPhoneSE = "I dislike this phone. It makes design hard"
    case pixel = "Hardware is great. Android is ewww"
    case nokia = "Can't be broken. Classic"
}

func getBikashOpinion(on phone : Phone){
    print(phone.rawValue)
}

getBikashOpinion(on: .iPhoneSE)
getBikashOpinion(on: .nokia)


// Switch

enum Laptop{
    case MacBookAir
    case DellXPS13
    case HPSpectrex360
    case ASUSZenBookUX425
    case VivoBook
}

func getBikashOpinion(on laptop : Laptop)
{
    switch laptop {
    case .MacBookAir:
        print("A lightweight and sleek laptop with great battery life and a stunning Retina display")
        break
    case .DellXPS13:
        print("A well-designed and powerful laptop with a virtually borderless InfinityEdge display and great performance")
        break
    case .HPSpectrex360:
        print("A versatile 2-in-1 laptop with a slim design, long battery life, and excellent performance.")
        break
    case .ASUSZenBookUX425:
        print("A slim and stylish laptop with a great display, long battery life, and fast performance.")
        break
    default:
        print("No compliment!")
        break
    }
}

// call the function
getBikashOpinion(on: .iPhone11Pro)
getBikashOpinion(on: .ASUSZenBookUX425)



// Operators

let valueOne : Int = 55
let valueTwo : Int = 23

// +, -, *, /, % operators are available in Swift

// assignment operator
let sum = valueOne % valueTwo

// logical opeartor -> ==, !=, >=, <=, >, <, !
print(sum)

// sort an array with inbuilt sort function
age.sort()

//age = []

if let oldestAge = age.last {
    print("The oldest age is \(oldestAge)")
}
else {
    print("There is no oldest age. You must have no elements")
}



// guard keyword
func getOldestAge()
{
    // guard helps the program to early exit if value which we will be working is null
    guard let oldestAge = age.last else{
        return
    }
    print("\(oldestAge) is the oldest age!")
}

getOldestAge()









// `class`

class Developer{
    var name: String
    var jobTitle: String
    var yearsExp: Int
    
    // default initializer
    init(){}
    
    // user defined initializer or constructor
    init(name: String, jobTitle: String, yearsExp: Int){
        self.name = name
        self.jobTitle = jobTitle
        self.yearsExp = yearsExp
    }
    
    // method
    func printDev(){
        print(self.name)
        print(self.jobTitle)
        print(self.yearsExp)
    }
}

var obj : Developer = Developer(name: "Bikash", jobTitle: "Full Stack Developer", yearsExp: 2)
obj.printDev()








