import Foundation

func noArgumentsAndNoReturnValue()
{
    // body of the function
    "I don't know what I'm doing"
}

noArgumentsAndNoReturnValue()


// Void function
func plusTwo(value : Int)
{
    let newValue = value + 2
}

plusTwo(value : 23)

// Non-void function
func newPlusTwo(value : Int) -> Int{
    return value+2
}
newPlusTwo(value : 23)


// Function with external and internal labels
func customSubtract(num1 a: Int, num2 b: Int) -> Int {
    a - b
}

customSubtract(num1: 12, num2: 5)


// Function with no external label
func customMultiplication(_ a: Int, _ b: Int)->Int
{
    return a*b
}

customMultiplication(5, 5)

// Let's write a recursive function to print first 'n' natural numbers

func printN(_ n : Int){
    if(n == 0)
    {
        return;
    }
    printN(n-1)
    print(n)
}
printN(10)
