// Optional Value

/* 
We can use if and let together to work with values that might be missing (Optional Value).
These values are represented as optionals. 
An optional value either contains a value or contains nil to indicate that a value is missing. 
*/


// A question mark (?) after the type of a value to mark the value as optional.

//var optionalString: String? = "Hello"

// Program 1
var optionalString: String? = "Hello"
print(optionalString == nil)

//Output:
//false

//-------------------------------------------------------------------------------------

// Program 2

var optionalName: String? = "John Appleseed"
var greeting = "Hello!"

/* Explanation:
If the value of the variable optionalName is nil, it means there is no value in it.
And, the optionalName would not be able to assign a value to name variable.
So, the condition is false and the code in braces is skipped.
*/ 

/* Explanation:
If the optionName variable has the value, then optional value is unwrapped and assigned to the constant after let, 
which makes the unwrapped value available inside the block of code.
*/

if let name = optionalName {
    greeting = "Hello, \(name)"
}
print(greeting)

//Output:
//Hello, John Appleseed

//-------------------------------------------------------------------------------------

// Program 3

var optionalName: String? = nil
print(optionalName == nil)
var greeting = "Hello!"
if let name = optionalName {
    greeting = "Hello, \(name)"
}
print(greeting)

//Output:
//true
//Hello!

//-------------------------------------------------------------------------------------

// Program 4

var optionalName: String? = nil
print(optionalName == nil)
var greeting = "Hello!"
if let name = optionalName {
    greeting = "Hello, \(name)"
    print(greeting)
}else {
    greeting = "Hi Buddy! The option value is nil"
    print(greeting)
}

//Output:
//true
//Hi Buddy! The option value is nil

//-------------------------------------------------------------------------------------

// Deafult Value Optional

/*
Another way to handle optional values is to provide a default value using the ?? operator. 
If the optional value is missing, the default value is used instead.
*/

let nickname: String? = nil
let fullName: String = "John Appleseed"
let informalGreeting = "Hi \(nickname ?? fullName)"
print(informalGreeting) 

//Output:
//Hi John Appleseed

//-------------------------------------------------------------------------------------