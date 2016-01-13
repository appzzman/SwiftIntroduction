//: Playground Introduction to Swift

import UIKit
import XCPlayground



//:  Variables
var str = "Hello, playground"

//:  Constants
let constant = "test"

//:  Data Types
var integer:Int = 0
var float:Float = 0.0
var double:Double = 0.0
var bool: Bool = true

//:  Strings
var string = "String"

//:printing
print(string)

//: concat
var number = 5
var text = "John has \(number) apples"

//: Tuples
var tuple = (0.0, "Janusz", true)
//accessing tuples
tuple.0
tuple.1
tuple.2

//assigning it to variables
let (myFloat, myString, myBool) = tuple
myFloat
myString
myBool

//We can assign names
let secondTuple = (count:10, length:10, message:"This is a message")
secondTuple.count

//Tuples can be used to return multiple values from function

//: # Optional Types
//:The Swift optional data type is a new concept that does not exist in most other programming languages. The purpose of the optional type is to provide a safe and consistent approach to handling situations where a variable or constant may not have any value assigned to it.
//: Smyth, Neil (2015-10-19). iOS 9 App Development Essentials: Learn to Develop iOS 9 Apps Using Xcode 7 and Swift 2 (Kindle Locations 1672-1674).  . Kindle Edition.


var index: Int?
index = 3
var treeArray = ["Oak", "Pine", "Yew", "Birch"]
if let myvalue = index {
    print(treeArray[myvalue])
}
else {
    print("index does not contain a value")
}

//Chaining optionals

var pet1:String?
var pet2:String?
pet1 = "dog"
pet2 = "cat"

if let firstPet = pet1, secondPet = pet2{
    print(pet1)//Printed as Optional()
    
    print(firstPet)//Unwrapped value
    print(secondPet)

}

//: ## Control Flow
//:
//: Use `if` and `switch` to make conditionals, and use `for`-`in`, `for`, `while`, and `repeat`-`while` to make loops. Parentheses around the condition or loop variable are optional. Braces around the body are required.
//:
let individualScores = [75, 43, 103, 87, 12]
var teamScore = 0
for score in individualScores {
    if score > 50 {
        teamScore += 3
    } else {
        teamScore += 1
    }
}
print(teamScore)

//: In an `if` statement, the conditional must be a Boolean expression—this means that code such as `if score { ... }` is an error, not an implicit comparison to zero.
//:
//: You can use `if` and `let` together to work with values that might be missing. These values are represented as optionals. An optional value either contains a value or contains `nil` to indicate that a value is missing. Write a question mark (`?`) after the type of a value to mark the value as optional.
//:
var optionalString: String? = "Hello"
print(optionalString == nil)

var optionalName: String? = "John Appleseed"
var greeting = "Hello!"
if let name = optionalName {
    greeting = "Hello, \(name)"
}


//: Switches support any kind of data and a wide variety of comparison operations—they aren’t limited to integers and tests for equality.
//:
let vegetable = "red pepper"
switch vegetable {
case "celery":
    print("Add some raisins and make ants on a log.")
case "cucumber", "watercress":
    print("That would make a good tea sandwich.")
case let x where x.hasSuffix("pepper"):
    print("Is it a spicy \(x)?")
default:
    print("Everything tastes good in soup.")
}

//:
//: You use `for`-`in` to iterate over items in a dictionary by providing a pair of names to use for each key-value pair. Dictionaries are an unordered collection, so their keys and values are iterated over in an arbitrary order.
//:
let interestingNumbers = [
    "Prime": [2, 3, 5, 7, 11, 13],
    "Fibonacci": [1, 1, 2, 3, 5, 8],
    "Square": [1, 4, 9, 16, 25],
]
var largest = 0
for (kind, numbers) in interestingNumbers {
    for number in numbers {
        if number > largest {
            largest = number
        }
    }
}
print(largest)

//: Use `while` to repeat a block of code until a condition changes. The condition of a loop can be at the end instead, ensuring that the loop is run at least once.
//:
var n = 2
while n < 100 {
    n = n * 2
}
print(n)

var m = 2
repeat {
    m = m * 2
} while m < 100
print(m)

//: You can keep an index in a loop—either by using `..<` to make a range of indexes or by writing an explicit initialization, condition, and increment. These two loops do the same thing:
//:
var firstForLoop = 0
for i in 0..<4 {
    firstForLoop += i
}
print(firstForLoop)

var thirdForLoop = 0
for i in 0...4 {
    thirdForLoop += i
}
print(firstForLoop)

var secondForLoop = 0
for var i = 0; i < 5; ++i {
    i
    secondForLoop += i
}
print(secondForLoop)




//: Use `..<` to make a range that omits its upper value, and use `...` to make a range that includes both values.


//: UIKit
//: Playgrounds let you also test the UI elements. For example code below can be used to create an instance of the UILabel class.
let myLabel = UILabel(frame: CGRectMake(0, 0, 200, 50))
myLabel.backgroundColor = UIColor.redColor()
myLabel.text = "Hello Swift"
myLabel.textAlignment = .Center
myLabel.font = UIFont(name: "Georgia", size: 24)


//: Enhanced Live Views
//:It is possible to test dynamic user interface behavior within a playground using the Xcode 7 Enhanced Live Views feature.
let container = UIView(frame: CGRectMake(0,0,200,200))
XCPShowView("My View", view: container)


container.backgroundColor = UIColor.whiteColor()
let square = UIView(frame: CGRectMake(50,50,100,100))
square.backgroundColor = UIColor.redColor()
container.addSubview(square)
 UIView.animateWithDuration(5.0, animations: {square.backgroundColor = UIColor.blueColor()
    let rotation = CGAffineTransformMakeRotation(3.14)
    square.transform = rotation }
)


//: #Documentation

/*: 
[Markup documentation]: https://developer.apple.com/library/ios/documentation/Xcode/Reference/xcode_markup_formatting_ref/FormattingDelimiters.html#//apple_ref/doc/uid/TP40016497-CH4-SW1 "Documentation Markup"
   To find more about playground markup please visit [Markup documentation].
*/
