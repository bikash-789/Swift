import Foundation

struct Person {
    let firstName : String?
    let lastName : String?
    
    // Since the firstName and lastName are optionals therefore, there could be error if any of them not present.
    // So to handle this we implement the following
    
    enum nameError : Error{
        case firstNameIsNil
        case lastNameIsNil
        case bothNamesAreNil
    }
    
    func getFullName() throws ->String{
        //        if let firstName, let lastName {
        //            return "\(firstName) \(lastName)"
        //        }
        //        else if firstName == nil, lastName != nil {
        //            throw nameError.firstNameIsNil
        //        }
        //        else if firstName != nil, lastName == nil{
        //            throw nameError.lastNameIsNil
        //        }
        //        else {
        //            throw nameError.bothNamesAreNil
        //        }
        
        // The above same thing can be achieved using switch case
        switch (firstName, lastName) {
        case (.none, .none):
            throw nameError.bothNamesAreNil
        case (.none, .some):
            throw nameError.firstNameIsNil
        case (.some, .none):
            throw nameError.lastNameIsNil
        case let (.some(firstName), .some(lastName)):
            return "\(firstName) \(lastName)"
        }}
}

let p = Person(firstName: "Bikash", lastName: nil)
do {
    let fullName = try p.getFullName()
} catch let e{
    "Got an error \(e)"
}
