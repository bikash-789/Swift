import Foundation

// Person class
class Person {
    var name: String
    var age : Int
    
    init(name : String, age : Int)
    {
        self.name = name
        self.age = age
    }
}



// Employee class inherits from Person class
class Employee : Person {
    var empID : Int
    
    init(_ n: String, _ a: Int, _ id :  Int) {
        self.empID = id
        super.init(name: n, age: a)
    }
    
    func getEmpDetails(){
        print(self.name)
        print(self.age)
        print(self.empID)
    }
}

var emp = Employee("Bikash", 22, 1122)
emp.getEmpDetails()
