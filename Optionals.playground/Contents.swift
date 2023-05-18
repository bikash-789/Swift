import Foundation


func multiplyByTwo(_ value : Int? = nil)-> Int{
    if let value {
        return value * 2
    }
    else {
        return 0
    }
}

multiplyByTwo(2)
multiplyByTwo()


var age : Int? = nil
age = 24
if age != nil {
    "Age is there!"
}
else {
    "Age is not there!"
}


// using guard if the function is dependent on any variable's value
func checkAge(_ age : Int? = nil){
    guard let age else {
        "Age is not present!"
        return
    }
    if age > 18 {
        "You are an adult!"
    }
    else {
        "You're not an adult!"
    }
}

checkAge(23)


// Optional
struct Person {
    let name : String
    let address : Address?
    struct Address {
        let firstLine : String?
    }
}


let p = Person(name: "Bikash", address: Person.Address(firstLine: "Birgunj"))

if let firstLineAddress = p.address?.firstLine {
    firstLineAddress
}
else {
    "Person doesn't have address!"
}

