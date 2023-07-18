import UIKit

var greeting = "Hello, Function"

/*
 Functions are self-contained chunks of code that perform a specific task. You give a function a name that identifies what it does, and this name is used to “call” the function to perform its task when needed.
 */

/*
 func functionName(argName:Type, argName2:Type) -> return Type
 */

/*
 func key word used to creat function.
 below is function definition
 take on aregument of string type and return string value
 */
func greet(person: String) -> String {
    var person = person.isEmpty ? "You" : person
    return "Hello " + person + "!"
}
/*
 Function call
 */
print(greet(person: "Rama"))

//Functions with Multiple Return Values
func minMax(of arr:[Int]) -> (min: Int, max: Int) {
    let min = arr.min() ?? Int.min
    let max = arr.max() ?? Int.max
    return (min: min, max: max)
}

print(minMax(of: [10,2,34,4,58,6,7]))

//Functions With an Implicit Return
//Omitting Argument Labels by undrscore '_'
func greetPerson(_ p: String) -> String {
    "Hello " + p + "!"; // no return statement required for single line of expresion code.
}
print(greetPerson("Bhole"))

//Default Parameter Values
func greetA(person p: String = "You") -> String {
    "Hello " + p + "!"; // no return statement required for single line of expresion code.
}
print(greetA(person:"Shiva"))
print(greetA())

/* Variadic Parameters
 A variadic parameter accepts zero or more values of a specified type.
 variadic parameters by inserting three period characters (...) after the parameter’s type name
 A function can have multiple variadic parameters.
 */

func arthmeticMean(numbers: Double...) -> Double {
    var sum: Double = 0
    for number in numbers {
        sum += number
    }
    return sum / Double(numbers.count)
}

print(arthmeticMean(numbers: 1, 2, 3, 4, 5, 6))

/*
 In-Out Parameters
 Function parameters are constants by default.
 placing the inout keyword right before a parameter’s type.
 An in-out parameter has a value that’s passed in to the function, is modified by the function, and is passed back out of the function to replace the original value.
 */

func swap(a: inout Int, b: inout Int) {
    a = a + b
    b = a - b
    a = a - b
}

var x = 10
var y = 20

print("Before x = \(x) & y = \(y)")

swap(a: &x, b: &y)

print("After x = \(x) & y = \(y)")

/*
 Function Types
 Every function has a specific function type, made up of the parameter types and the return type of the function.
 */

func addTwoInts(_ a: Int, _ b: Int) -> Int {
    return a + b
}

func multiplyTwoInts(_ a: Int, _ b: Int) -> Int {
    return a * b
}

/*
 The type of both of these functions is (Int, Int) -> Int. This can be read as:

 “A function that has two parameters, both of type Int, and that returns a value of type Int.”
 */

//Using Function Types
var mathFunction: (Int, Int) -> Int = addTwoInts

print("mathFunction add = \(mathFunction(10, 20))")

mathFunction = multiplyTwoInts

print("mathFunction Multiply = \(mathFunction(10, 20))")

//Function Types as Parameter Types
func printMathResult(_ mathFunction: (Int, Int) -> Int, _ a: Int, _ b: Int) {
    print("Result: \(mathFunction(a, b))")
}

printMathResult(multiplyTwoInts, 10, 20)
printMathResult(addTwoInts, 10, 20)
printMathResult(mathFunction, 5, 7)

//Function Types as Return Types
func moveForward(_ input: Int) -> Int {
    return input + 1
}
func moveBackward(_ input: Int) -> Int {
    return input - 1
}

func chooseStepFunction(backward: Bool) -> (Int) -> Int {
    return backward ? moveBackward : moveForward
}
var currentValue = 3
let moveNearerToZero = chooseStepFunction(backward: currentValue > 0)

print("Counting to zero:")
// Counting to zero:
while currentValue != 0 {
    print("\(currentValue)... ")
    currentValue = moveNearerToZero(currentValue)
}
print("zero!")
