// Closures

// Predicates or conditions

//--------------------------------------------------------------------

/*

-Inference: A conclusion reached on the basis of evidence and reasoning.

-In Swift, closures are functional block that gives code greater flexibility, 
by allowing the passing around of functional code in variables and constants.

-Closures are functional block. It does not has name like function has its name, 
neither it has a keyword to define closures like function has keyword "func" to
define function.

-Closures look very similar to functions.

-Closures are similar to functions, but they are more flexible 
(capable of being changed) and have a more streamlined 
(made efficient by stripping off nonessentials) appearance.

-Closures allows for the removal of any uneccessary parts of code to make 
it clear and precise.

-Since functions and closures do the same things, use what syntax
makes the most sense at the moment. It is entirely up to you to decide
which one we want at any given time.

-Closures make code easier to read and shorter without losing 
any intentions to the code.

-Closures are self-contained blocks of functionality 
that can be passed around and used in your code.

*/

//--------------------------------------------------------------------

/* Closure is a self-contained blocks of functionality without name and 
keyword to define it.
*/

// Example of closure: Created a closure that prints Hello World.

{
    print("Hello World")
}

//--------------------------------------------------------------------

/*
Swift Closure Declaration:

We don't use the "func" keyword to create closure. Here's the syntax to declare
a closure:
*/

{ (parameters) -> returnType in
    // statements
}

/*
Here,
1. parameters: any value passed to closure
2. returnType: specifies the type of value returned by the closure
3. in: used to separate parameters/returnType from closure body
*/

// Example:

/*
Here, we have defined a closure and assigned it to the variable named greet.
Statement enclosed inside the {} is the closure body.

To execute this closure, we need to call it. Here, how we can call the 
closure: greet()

The closure simply prints the text Hello World

Note: This closure does not have any parameters and return type.
*/

// Declare a closure
var greet = {
    print("Hello, World!")
}

greet()   // call the closure


//Output:
//Hello, World!

//--------------------------------------------------------------------

// Closure Parameters

/*
Similar to functions, a closure can also accept parameters. For example:
*/

// Closure that accepts one parameter

let greetUser = { (name: String) in
    print("Hey there, \(name).")
}

// closure call
greetUser("Daniel")

//Output:
//Hey there, Daniel.

/*
In the above example, we have assigned a closure to the "greetUser" variable.

Inside the closure, (name: String) specifies that the closure accepts the
String type parameter.

Notice that we have used "in" to separate closure parameter with body.

Note: Unlike function, we call the closure without mentioning the parameter name.
*/

//--------------------------------------------------------------------

// Closure that Returns Value

/*
A Swift closure may or may not return a value.
If we want our closure to return some value, 
we need to mention it's return type and
use the return statement.

For example:
*/

// closure definition

var findSquare = { (num: Int) -> (Int) in
    let square = num * num
    return square
}

// closure call
var result = findSquare(3)
print("Square: ", result)

//Output:
//Square:  9

/*
-In the above example, we have defined a closure that returns the square
of a number.
Here, (num: Int) -> (Int) in the closure definition indicates:

(num: Int) - indicates the parameter of integer type
-> (Int) - represents the closure return value of type Int.
return square - return statement inside the closure
The returned value is stored in the result variable.
*/

//--------------------------------------------------------------------

// Closures as Function Parameter

//In Swift, we can create a function that accepts closure as its parameter.

// define a function

func grabLunch(search: () -> ()){
    print("Let's go out for lunch")
    // closure call
    search()
}

/*
Here,
search: function parameter
() -> (): represents the type of the closure
search(): call closure from the inside of the function.

Now, to call this function, we need to pass a closure as its argument.
*/

// function call, pass closure as a parameter
grabLunch(search: {
    print("Alfredo's Pizza: 2 miles away")
})

//Output:
//Let's go out for lunch
//Alfredo's Pizza: 2 miles away

//--------------------------------------------------------------------

// Trailing Closure

// function definition

func grabLunch(message: String, search: ()->()){
    print(message)
    search()
}

// calling the function; use of trailing closure
grabLunch(message: "Let's go out for lunch") {
    // closure body
    print("Daniel's Pizza: 2 miles away")
}

/* 
In trailing closure, if a function accepts a closure as its last parameter,
we can call the function by passing closure as a function body without 
mentioning the name of the parameter.

Here, everything inside the {...} is a closure body.
*/

//Output:
//Let's go out for lunch
//Daniel's Pizza: 2 miles away

/*
In the above example, the grabLunch() function accepts a closure
search: ()->(). Here, closure is the last parameter of the function.

Hence, we have called the function by passing the closure argument
as function definition.
*/

//--------------------------------------------------------------------

// Autoclosure

/*
While calling a function, we can also pass the closure 
without using the braces {}.
*/

// For example:

// calling a function using {}

display(greet:{
    print("Hello World!")
})

// calling a function without using {}

//display(greet: print("Hello World!"))

/*
To pass the closure argument without using braces, we must use the
@autoclosure keyword in function definition.
*/

// For example:

/*
func display(greet: @autoclosure () -> ()){
    ...
}
*/

//Here, the @autoclosure automatically adds curly braces.

// Example: Autoclosure

// define a function with automatic closure

func display(greet: @autoclosure () -> ()){
    greet()
}

// pass closure without {}
display(greet: print("Hello World!"))

//Output:
//Hello World!

//--------------------------------------------------------------------

/*
We cannot pass arguments to an autoclosure. If we try to do so
we will get the error message as:
argument type of @autoclosure parameter must be '()'
*/

func display(message: String, greet: @autoclosure (String) -> (String)){
    print(greet(message))
}

// pass closure without {}
display(message: "Hello World!", greet: (m)->(String) in 
    return(m))

//Output:
//error: argument type of @autoclosure parameter must be '()'

//--------------------------------------------------------------------

func display(message: String, greet: (String) -> (String)){
    print(greet(message))
}

display(message: "Hello!", greet:{ (m)->(String) in 
    let greeting = "\(m) Sunil"
    return(greeting)
    })

//Output:
//Hello! Sunil

//--------------------------------------------------------------------

// Trailing closures

func function(closure: () -> Void) {
  print("Inside function call");
  closure();
  print("After closure call")
}

function {
  print("Inside closure");
}

//Output:
//Inside function call
//Inside closure
//After closure call

//--------------------------------------------------------------------

// Capturing Values

/*
Closures can capture values from the context surrounding them. 
Swift stores the external values alongside the closure so it 
can easily refer to and modify.
*/

func counter() -> () -> Int {
  var count = 0
  let add = { () -> Int in
      count += 1
      return count
  }
  return add
}

let countUp = counter()

print(countUp())    // Output: 1
print(countUp())    // Output: 2
print(countUp())    // Output: 3

let countUpTwo = counter()

print(countUpTwo()) // Output: 1
print(countUp())    // Output: 4

/*
In the first instance of counter(), assigned to the variable countUp, 
the closure stored the previous value and incremented the value each 
time it was called. Creating a new instance of counter() affect countUp 
because they are not in the same context as each other.
*/

//--------------------------------------------------------------------

func filterWithPredicateClosure(closure: (Int)-> Bool, numbers:[Int]) -> [Int] {
    var filterNumbers: [Int] = []
    for num in numbers{
        //perform some condition check here
        if closure(num){
            filterNumbers.append(num)
        }
    }
    return filterNumbers
}

let filteredList = filterWithPredicateClosure(closure: {(num) -> Bool in
    return num>2}, numbers: [1,2,3,4,5,10])
print(filteredList)

//Output:
//[3, 4, 5, 10]

//--------------------------------------------------------------------

func filterWithPredicateClosure(closure: (Int)-> Bool, numbers:[Int]) -> [Int] {
    var filterNumbers: [Int] = []
    for num in numbers{
        //perform some condition check here
        if closure(num){
            filterNumbers.append(num)
        }
    }
    return filterNumbers
}

var dataClosure = { (value: Int) -> Bool in
    return value % 5 == 0
}


let filteredList = filterWithPredicateClosure(closure: dataClosure, numbers: [20, 30, 1, 2, 9, 15])
print(filteredList)

//Output:
//[20, 30, 15]

//--------------------------------------------------------------------

// Rewrite the closure to return zero for all odd numbers.

let numArray: [Int] = [2, 5, 8, 7, 9, 14]
var anotherArray: [Int:Int] = [:]

var status = { (numArray: [Int]) -> [Int: Int] in
for num in numArray{
    if (num % 2 != 0){
        anotherArray[num] = 0
    }
} 
return anotherArray  
}

let listOfZeros = status(numArray)
print(listOfZeros)

//Output:
//[7: 0, 5: 0, 9: 0]

//--------------------------------------------------------------------

// Type Inference

let numbers = [38, 45, 66, 72, 19, 73]

var sortedNumbers = numbers.sorted( by: { (num1:Int, num2:Int) -> Bool in
  return num1 < num2
})

print(sortedNumbers)

//Output:
//[19, 38, 45, 66, 72, 73]

/*
Swift can infer the type for the parameters and the return type. 
To demonstrate this, the following numbers will be sorted in 
ascending order using Swift’s .sorted() method.

Here, a variable named sortedNumbers is created and the .sorted() 
method is called on the numbers array.

The closure inside the curly brackets is the argument the numbers 
are being sorted by. Two integers, num1 and num2, are taken in and 
a boolean is returned. When num1 is less than num2, it returns true. 
Otherwise, it returns false.

The .sorted() method sorts through the whole array and returns a new array.

Since .sorted() method is being called on an array of integers, 
Swift can infer that the argument is of type (Int, Int) -> (Bool). 
This means types do not need to be written in the argument, 
the above expression can be written as follows:

sortedNumbers = numbers.sorted(by: { num1, num2 in return num1 < num2 })

*/

//--------------------------------------------------------------------

// Single Expression Closures

/*
If the closure uses a single expression, like the one above where 
num1 < num2 is the sole expression, Swift knows what is needed to be returned.

Due to this, there is no need to write the return key in the argument. 
This can be omitted in the above example, and written as follows:

sortedNumbers = numbers.sorted(by: { num1, num2 in num1 < num2 })

*/

//--------------------------------------------------------------------

// Shorthand Argument Names

/*
There are also shorthand argument names Swift makes available to inline closures. 
They are based on the closure’s argument values. $0 is used for the first argument 
value, $1 for the second value, $2 for the third, and so on.

When using shorthand argument names, the argument list and the in keyword can be 
completely omitted. When removing this from the previous expression, it looks 
like this:

sortedNumbers = numbers.sorted(by: { $0 < $1 })

*/

//--------------------------------------------------------------------

// Operations

/*
Swift has type-specific implementations of operators. In the above closure 
expression when the < operator is being used on integers, Swift can further 
infer that two integers must be taken in and a value of type Bool will be returned.

The shorthand expression names can be removed entirely and just the operator 
needs to be passed in as the argument, like so:

sortedNumbers = numbers.sorted(by: < )

*/

//--------------------------------------------------------------------