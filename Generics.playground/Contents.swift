import Foundation

// Prevent us from writing same code multiple times

func performInt(_ op: (Int, Int)->Int, on lhs : Int, and rhs : Int) -> Int {
    op(lhs, rhs)
}

performInt(+, on : 12, and : 23)
performInt(-, on : 25, and : 13)



// Generic code
func perform<T> (
    _ op : (T, T)->T,
    on lhs : T,
    and rhs : T
)-> T {
    op(lhs, rhs)
}

perform(+, on: 2.3, and: 23.4)
perform(+, on: "Bikash ", and : "Chauhan")


// Generic code usecases in implementing protocol

protocol CanRun {
    func run()
}

protocol CanJump {
    func jump()
}

struct Person : CanRun, CanJump {
    func jump() {
        "Jumping..."
    }
    func run(){
        "Running..."
    }
}

func jumpAndRun<T: CanJump & CanRun>(_ value: T)
{
    value.jump()
    value.run()
}

let person = Person()
jumpAndRun(person)


