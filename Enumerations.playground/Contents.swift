import Foundation

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

