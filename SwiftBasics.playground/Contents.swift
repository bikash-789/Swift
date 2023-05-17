import Foundation

let foo = "Foo"
var foo2 = foo
foo2 = "Foo 2"
foo
foo2


let moreNames = [
    "Foo",
    "Bar"
]

var copy = moreNames
copy.append("Baz")
moreNames
copy

let someNames = NSMutableArray(
    array : [
        "Foo",
        "Bar"
    ]
)

func changeTheArray(array : NSArray)
{
    let copy =  array as! NSMutableArray
    copy.add("Baz")
}

changeTheArray(array: someNames)
someNames
