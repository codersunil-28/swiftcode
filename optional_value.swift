// Optional Value

/* 
We can use if and let together to work with values that might be missing (Optional Value).
These values are represented as optionals. 
An optional value either contains a value or contains nil to indicate that a value is missing. 
*/


// A question mark (?) after the type of a value to mark the value as optional.

//var optionalString: String? = "Hello"

// Program 1

/*
var optionalString: String? = "Hello"
print(optionalString == nil)
*/

//Output:
//false

//-------------------------------------------------------------------------------------

// Program 2

/*
var optionalName: String? = "John Appleseed"
var greeting = "Hello!"
*/

/* Explanation:
If the value of the variable optionalName is nil, it means there is no value in it.
And, the optionalName would not be able to assign a value to name variable.
So, the condition is false and the code in braces is skipped.
*/ 

/* Explanation:
If the optionName variable has the value, then optional value is unwrapped and assigned to the constant after let, 
which makes the unwrapped value available inside the block of code.
*/

/*
if let name = optionalName {
    greeting = "Hello, \(name)"
}
print(greeting)
*/

//Output:
//Hello, John Appleseed

//-------------------------------------------------------------------------------------

// Program 3

/*
var optionalName: String? = nil
print(optionalName == nil)
var greeting = "Hello!"
if let name = optionalName {
    greeting = "Hello, \(name)"
}
print(greeting)
*/

//Output:
//true
//Hello!

//-------------------------------------------------------------------------------------

// Program 4

/*
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
*/

//Output:
//true
//Hi Buddy! The option value is nil

//-------------------------------------------------------------------------------------

// Deafult Value Optional

/*
Another way to handle optional values is to provide a default value using the ?? operator. 
If the optional value is missing, the default value is used instead.
*/

/*
let nickname: String? = nil
let fullName: String = "John Appleseed"
let informalGreeting = "Hi \(nickname ?? fullName)"
print(informalGreeting) 
*/

//Output:
//Hi John Appleseed

//-------------------------------------------------------------------------------------

// Optional Value:

/*
There is another data type in Swift called Optional, 
whose default value is a null value (nil). 

You can use optional when you want a variable or 
constant contain no value in it. An optional type 
may contain a value or absent a value (a null value).

Non technically, you can think optional as a shoe box. 
The shoe box may or may not contain a shoe in it. 
So, you should know beforehand while accessing the shoe 
from the box.
*/

//How to declare an Optional?

/*
You can simply represent a Data type as Optional by appending
! or ? to the Type. If an optional contains a value in it, it 
returns value as Optional<Value>, if not it returns nil.
*/

//Example 1: How to declare an optional in Swift?

/*
var someValue:Int?
var someAnotherValue:Int!
print(someValue)
print(someAnotherValue)
*/

//Output:
//nil
//nil

//-------------------------------------------------------------------------------------

//Example 2: Assigning and accessing a value from an optional

/*
let someValue:Int? = 5
print(someValue)
print(someValue!)
*/

//Output:
//Optional(5)
//5

/*
In the above program, we have declared an optional of Int type 
and assigned value 5 in it.

As you can see, printing the optional as print(someValue) doesn't 
give you 5 but Optional(5). It is of the form as described 
above: Optional<Value>. In order to access the <Value> from it, 
we need a mechanism called unwrapping.

You can unwrap an optional by appending ! character at the end 
of the variable/constant as in the next line print(someValue!). 
print(someValue!) unwraps the optional and outputs 5 on the screen.

However, remember, this kind of unwrapping mechanism should only 
be used when you are certain that the optional will sure have a 
value when you access it.
*/

//-------------------------------------------------------------------------------------

//Example 3: Explicitly declaring an unwrapped optional

//You can also create an unwrapped optional as:

/*
let someValue:Int! = 5
print(someValue)
*/

//Output:
//5

/*
In the above program, Int! creates a unwrapped optional, which 
automatically unwraps the value while you access it so that you 
don't need to everytime append the ! character.

Be certain while you use these kinds of optionals, the variable 
will always need to have a value when you access it. If you don't, 
you will get a fatal error crash.
*/

//-------------------------------------------------------------------------------------

//Example 4: Fatal error when accessing a null unwrapped optional

/*
var someValue:Int!
var unwrappedValue:Int = someValue //crashes due to this line
*/

/*
When you run the program, you will get a crash as fatal error: 
unexpectedly found nil while unwrapping an Optional value because 
the code unwrappedValue:Int = someValue tries to assign value from 
Optional someValue to variable unwrappedValue.

However, somevalue is an Optional type that contains nil value. 
Trying to assign nil value to variable unwrappedValue which is 
not an optional will lead to crash.

There are different techniques to handle this case which are explained below.
*/

//-------------------------------------------------------------------------------------

//Optional Handling

/*
In order to use value of an optional, it needs to be unwrapped. 
Better way to use optional value is by conditional unwrapping 
rather than force unwrapping using ! operator.

This is because conditionally unwrapping asks Check if this 
variable has a value? . If yes, give the value, otherwise it 
will handle the nil case.

On the contrary, force unwrapping says This variable does have a 
value while you use it. Therefore, when you force unwrap a variable 
that is nil, your program will throw an unexpectedly found nil while 
unwrapping an optional exception and crash. Some of the techniques 
for conditional unwrapping are explained below:
*/

//-------------------------------------------------------------------------------------

//1. If-statement

/*
You can use if statement and compare optional with nil to find 
out whether a optional contains a value or not. You can use the 
comparison operator "equal to" operator (==) or the "not equal to" 
operator (!=) in the if statement.
*/

//Example 5: Optional handling with if else statement

/*
var someValue:Int?
var someAnotherValue:Int! = 0
        
if someValue != nil {
	print("It has some value \(someValue!)")
} else {
	print("doesn't contain value")
}
        
if someAnotherValue != nil {
	print("It has some value \(someAnotherValue!)")
} else {
	print("doesn't contain value")
}
*/

//Output:
//doesn't contain value
//It has some value 0

/*
In the above program, the code inside if statement executes if 
an optional contain a value, otherwise the statement inside the 
else block executes. The major drawback of optional handling using 
this technique is, you still need to unwrap the value from optional 
using ! operator.
*/

//-------------------------------------------------------------------------------------

//2. Optional Binding (if-let)

/*
Optional binding helps you to find out whether an optional 
contains a value or not. If an optional contains a value, 
that value is available as a temporary constant or variable. 
Therefore, optional binding can be used with if statement to 
check for a value inside an optional, and to extract that value 
into a constant or variable in a single action.
*/

//Example 5: Optional handling using if let statement

/*
var someValue:Int?
var someAnotherValue:Int! = 0
       
if let temp = someValue {
	print("It has some value \(temp)") 
} else {
	print("doesn't contain value")
}
        
if let temp = someAnotherValue {
	print("It has some value \(temp)")
} else {
	print("doesn't contain value")      
}
*/

//Output:
//doesn't contain value
//It has some value 0


/*
In the above program, the code inside if statement executes 
if the optional contains a value. Otherwise the else block 
gets executed. The if-let statement also automatically unwraps 
the value and places the unwrapped value in temp constant. 
This technique has major advantage because you don't need to 
forcely unwrap the value although being certain an optional 
contains a value.
*/

//-------------------------------------------------------------------------------------

//Swift guard Statement

/*
In Swift, we use the guard statement to transfer program control 
out of scope when certain conditions are not met.

The guard statement is similar to the if statement with one major 
difference. The if statement runs when a certain condition is met. 
However, the guard statement runs when a certain condition is not met.
*/

//Syntax of guard Statement

/*
guard expression else {
  // statements
  // control statement: return, break, continue or throw.
}
*/

/*
Here, expression returns either true or false. If the expression evaluates to

true - statements inside the code block of guard are not executed and 
the code after guard scope is executed.
false - statements inside the code block of guard are executed

Note: We must use return, break, continue or throw to exit from the guard scope.
*/

//-------------------------------------------------------------------------------------

//Example: Swift Guard Statement

/*
var i = 2

while (i <= 10) {
    
  // guard condition to check the even number 
  guard i % 2 == 0 else {
   
     i = i + 1
    continue
  }

  print(i)
  i = i + 1
} 
*/

//Output:

/*
2
4
6
8
10
*/


/*
In the above example, we have used the guard statement to check 
if the number is even or odd. Notice the line:

guard i % 2 == 0 else {...}

Here, if i is

odd - , i % 2== 0 evaluates to false. And, the code inside the guard is executed.
even - , i % 2 == 0 evaluates to true. And, the code inside the guard is skipped.
Hence, we only get the even numbers as our output.

We have used the continue statement inside guard to transfer the control to the 
next iteration of the loop.

Note: The use of control statements like continue, break, etc. is compulsory. 
Otherwise, we will get an error: 'guard' body must not fall through, consider 
using a 'continue' or 'return' to exit the scope.
*/

//-------------------------------------------------------------------------------------

//guard Statement Inside a Function

/*
The guard statement is generally used with functions. A function is 
a block of code that performs a specific task. To learn more, visit 
Swift Function.

Let's see how we can use a guard statement with functions.
*/


/*
// create a function
func checkOddEven() {
  var number = 23

  // use of guard statement
  guard number % 2 == 0 else {
    
    print("Odd Number")
    return
  }

  print("Even Number")
}

// function call
checkOddEven()
*/

//Output:
//Odd Number


/*
In the above example, we have created a function named checkOddEven(). 
Notice the use of guard statement inside the function.
*/

/*
guard number % 2 == 0 else {
    
  print("Odd Number")
  return
}
*/

/*
Here, the guard statement checks if the number is even or odd. 
Since the number is odd, the condition number % 2 == 0 returns false.

Hence, the code inside the guard statement is executed.

Now, let's change the value of number to an even number, say 24.
*/


/*
// create a function
func checkOddEven() {
  var number = 24

  // use of guard statement
  guard number % 2 == 0 else {
    
    print("Odd Number")
    return
  }

  print("Even Number")
}

// function call
checkOddEven()
*/

//Output
//Even Number

/*
Here, since the number is even, the condition number % 2 == 0 
evaluates to true.

So, the code inside the guard statement is skipped and the other 
code inside of the function is executed. Hence, we get Even Number 
as an output.
*/

//-------------------------------------------------------------------------------------

//guard with multiple conditions

/*
guard statements can also chain multiple conditions separated by comma (,) as:
*/

/*
func checkJobEligibility() {
    
  var age = 33

  guard age >= 18, age <= 40 else {
    print("Not Eligible for Job")
    return
  }

  print("You are eligible for this job")

}

checkJobEligibility()
*/

//Output
//You are eligible for this job


/*
In the above example, the guard statement contains two conditions 
separated by a comma.

Here, there will be the Logical AND relation between two conditions. 
That is, the guard condition is true only if both conditions are true.
*/

//-------------------------------------------------------------------------------------

//guard-let Statement

/*
While working with Swift Optionals, the guard statement is used as 
the guard-let statement. For example:
*/

/*
func checkAge() {
	
  var age: Int? = 22

  guard let myAge = age else {
    print("Age is undefined")
    return
  }

  print("My age is \(myAge)")
}

checkAge()
*/

//Output
//My age is 22

/*
In the above example, we have created an optional variable named age. 
Here, we are using the guard-let statement to check whether age contains 
a value or not.

Since age contains some value, the code inside the guard-let block is not 
executed. This works similar to the condition of guard being true.
*/

//-------------------------------------------------------------------------------------

//guard Vs if Statement

/*
The guard statement is introduced as an alternative to the if statement. 
For example,

Suppose we want to check if a person is eligible to vote, we can use the 
if statement as:
*/


/*
func voteEligibility() {
    
  var age = 42

  if age >= 18 {
  print("Eligible to vote")
  }
  else {
  print("Not eligible to vote")
  }

}

voteEligibility()
*/

//Output
//Eligible to vote

/*
This same program can be written using the guard statement as:

func voteEligibility() {
    
  var age = 42

  guard age >= 18 else {
  print("Not Eligible to vote")
  return
  }

  print("Eligible to vote")
}

voteEligibility()
*/

//Output
//Eligible to vote

/*
As you can see, with the guard statement, we can exit from the 
function as soon as the condition evaluates to false.
*/

//-------------------------------------------------------------------------------------

//Guard statement

/*
You can use guard to handle optionals in Swift. 
Don't worry if you don't know what guard is. 
For now, just think of guard as an if-else condition 
with no if block. If the condition fails, else statement 
is executed. If not, next statement is executed.
*/

//Example 6: Optional handling using guard-let

/*
func testFunction() {
	let someValue:Int? = 5
	guard let temp = someValue else {
		return
	}
	print("It has some value \(temp)")
}

testFunction()
*/

//Output:
//It has some value 5


/*
In the above program, the guard contains a condition whether an optional 
someValue contains a value or not. If it contains a value then guard-let 
statement automatically unwraps the value and places the unwrapped value 
in temp constant. Otherwise, else block gets executed and and it would 
return to the calling function. Since, the optional contains a value, 
print function is called.
*/

//-------------------------------------------------------------------------------------

//Nil-coalescing operator

/*
In Swift, you can also use nil-coalescing operator to check whether 
a optional contains a value or not. It is defined as (a ?? b). It 
unwraps an optional a and returns it if it contains a value, or 
returns a default value b if a is nil.
*/

// Example 7: Optional handling using nil-coalescing operator

/*
var someValue:Int!
let defaultValue = 5
/*
The nil-coalescing operator (??) fails to unwrap value from
"someValue" as it has no value so value of "defaultValue" 
constant will be assigned.
*/
let unwrappedValue:Int = someValue ?? defaultValue
print(unwrappedValue)
*/

//Output:
//5


/*
In the above program, variable someValue is defined optional and 
contains nil value. The nil coalescing operator fails to unwrap 
the optional therefore returns defaultValue. Therefore the statement 
print(unwrappedValue) outputs 5 in the console.
*/

//-------------------------------------------------------------------------------------

/*
var someValue:Int? = 10
let defaultValue = 5
let unwrappedValue:Int = someValue ?? defaultValue
print(unwrappedValue)
*/

//Output:
//10


/*
However, in the above program, optional variable someValue is 
initialized with value 10. So, the nil coalescing operator 
successfully unwraps the value from someValue. Therefore, the 
statement someValue ?? defaultValue returns 10 and the statement 
print(unwrappedValue) outputs 10 in the console.
*/

//-------------------------------------------------------------------------------------

// Optional Variable with value used.

/*
class Square{
    var sideLength: Double = 0.0
    var name: String = ""

    init(sideLength: Double, name: String){
        self.sideLength = sideLength
        self.name = name
    }
}

var optionalSquare: Square? = Square(sideLength: 2.5, name: "optional square")

let temp = optionalSquare?.sideLength ?? 35.8
print(temp)
*/

//Output
//2.5
//-------------------------------------------------------------------------------------

// Optional Variable Nil and Nil-coalescing operator used.

/*
class Square{
    var sideLength: Double?
    var name: String = ""

    init(sideLength: Double, name: String){
        self.sideLength = sideLength
        self.name = name
    }

    init(){

    }
}

var optionalSquare: Square? = Square()

let temp = optionalSquare?.sideLength ?? 35.8
print(temp)
*/

//Output
//35.8
//-------------------------------------------------------------------------------------

/*
When working with optional values, you can write ? before operations 
like methods, properties, and subscripting. If the value before the ? 
is nil, everything after the ? is ignored and the value of the whole 
expression is nil. Otherwise, the optional value is unwrapped, and 
everything after the ? acts on the unwrapped value. In both cases, 
the value of the whole expression is an optional value.”
*/

/*
let optionalSquare: Square? = Square(sideLength: 2.5, name: "optional square")
let sideLength = optionalSquare?.sideLength
*/

//-------------------------------------------------------------------------------------