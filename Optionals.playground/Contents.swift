import UIKit

var firstLetter: Character?

print(firstLetter)

firstLetter = "a"

//print(firstLetter)

var name: String = "Caleb"

// Force unwrapping
var a = 4
var b: Int? = 56

// Use ! to unwrap only when you believe the variable's content is NOT nil
if b != nil {
    let sum = a + b!
    print(sum)
}

// Optional binding
var errorMessage: String? = nil

/*  If errorMessage is nil, nonOptionalErrorMessage is never declared.
    If errorMessage is not nil, a new constant nonOptionalError of type String is created. Then the error message is printed.
 */
if let nonOptionalErrorMessage = errorMessage {
    print("Error: \(nonOptionalErrorMessage)")
} else {
    print("No error message")
}


// Multiple optional bindings
var num1: Int? = 1
var num2: Int? = 2
var num3: Int? = 3
var shouldPrintSum = true

if let num1 = num1 {
    if let num2 = num2 {
        if let num3 = num3 {
            if shouldPrintSum {
                print(num1 + num2 + num3)
            }
        }
    }
}

// Guard statements
// To avoid overly nested code
func greetUser(isAuthenticated: Bool) {
    guard isAuthenticated else {
        print("Error: user is not authenticated")
        return
    }
    print("Hello user!")
}

greetUser(isAuthenticated: false)

// To exit the scope of loops
var nums = [3, 1, 0, 6]
for num in nums {
    guard num != 0 else {
        print("Can't divide by zero!")
        continue
    }
    print("10 / \(num) = \(10 / num)")
}
