import Foundation
import UIKit

// Categorization of similar values that are named

enum Animals {
    case cat
    case dog
    case rabbit

}

let Kitty = Animals.cat

// Using if-else
if Kitty == Animals.cat {
    "This is a Cat"
}
else if Kitty == Animals.dog {
    "This is a Dog"
}
else if Kitty == Animals.rabbit {
    "This is a rabbit"
}

else {"This is something else"}


// Using switch case - mostly preferred
switch Kitty {
case .cat:
    "This is a Cat"
    break
case .dog:
    "This is a Dog"
    break
case .rabbit:
    "This is a Rabbit"
    break
}



// Associate enums
enum Shortcut{
    case fileOrFolder(name: String)
    case wwwUrl(path: String)
    case song(artist: String, songName: String)
}

let wwwApple = Shortcut.wwwUrl(path: "www.apple.com")


// Switch case for enum
switch wwwApple {
case .fileOrFolder(name: let name):
    name
    break
case .wwwUrl(path: let path):
    path
    break
case .song(artist: let artist, songName: let songName):
    artist
    songName
    break
}


// Another switch case for enum - removed external naming
switch wwwApple {
    
case let .fileOrFolder(name):
    name
    break
    
case let .wwwUrl(path):
    path
    break
    
case let .song(artist, songName):
    artist
    songName
    break
}


// Adding a getter method in enum
enum Vehicle{
    case car(manufacturer: String, model : String)
    case bike(manufacturer: String, year: Int)
    
    func getManufacturer()->String
    {
        switch self{
        case let .car(manufacturer, _):
            return manufacturer
        case let .bike(manufacturer, _):
            return manufacturer
        }
    }
}

var car = Vehicle.car(manufacturer: "BMW", model: "X5")
var bike = Vehicle.bike(manufacturer: "HD", year: 2022)

car.getManufacturer()
bike.getManufacturer()


enum FamilyMember : String {
    case father = "Dad"
    case mother = "Mom"
    case brother = "Bro"
    case sister = "Sis"
}

FamilyMember.father.rawValue
FamilyMember.brother.rawValue


enum FavoriteEmoji : String, CaseIterable {
    case blush = "😊"
    case rocket = "🚀"
    case fire = "🔥"
}
FavoriteEmoji.allCases
FavoriteEmoji.allCases.map(\.rawValue)




// Mutability in enums
enum Height {
    case short, medium, long
    mutating func makeLong(){
        self = Height.long
    }
}


var myHeight = Height.medium
// Changing myHeight from 'medium' to 'long' - mutating
myHeight.makeLong()
myHeight


