// Swift Generics (English meaning- common, non-specific)

/*
Swift Generics allows us to create a single function and
class (or any other types) that can be used with different data types.

This helps us to reuse our code.

In Swift, we can create a function that can be used with any 
type of data. Such a function is known as a Generic Function.

Here's how we can create a generic function in Swift:
*/

// create a generic function

/*
func displayData<T>(data: T){
  ...
}
*/

/*
Here,

We have created a generic function named displayData().

T used inside the angle bracket <> is called the type parameter.

And based on the type of the value passed to the function, 
the T is replaced by that data type (Int, String, and so on).

Note: We can provide any name to the type parameter: <S>, 
<Element>, etc. But generally, we use T.
*/

//Example: Swift Generic Function

// create a generic function

/*
func displayData<T>(data: T) {
  print("Generic Function:")
  print("Data Passed:", data)
}

// generic function working with String
displayData(data: "Swift")

// generic function working with Int
displayData(data: 5)
*/

//Output:
// Generic Function:
// Data Passed: Swift
// Generic Function:
// Data Passed: 5

/*
In the above example, we have created a generic function
named displayData() with the type parameter <T>.

Now, when we call the generic function

displayData(data: "Swift")

we have passed a string value, so the placeholder parameter T 
is automatically replaced by String.

Similarly, when we pass Int to the generic function

displayData(data: 5)

the placeholder is replaced by Int.
*/

//------------------------------------------------------------------------------

// Swift Generic Class

/*
Similar to the generic function, we can also create a class that can 
be used with any type of data. Such a class is known as Generic Class.

Let's see an example:
*/


/*
// create a generic class
class Information<T> {

  // property of T type
  var data: T

  init (data: T) {
    self.data = data
  }

  // method that return T type variable
  func getData() -> T {
    return self.data
  }
}

// initialize generic class with Int data
var intObj = Information<Int>(data: 6)
print("Generic Class returns:", intObj.getData())

// initialize generic class with String data
var strObj = Information<String>(data: "Swift")
print("Generic Class returns:", strObj.getData())
*/


//Output:
// Generic Class returns: 6
// Generic Class returns: Swift

/*
In the above example, we have created a generic class named Information. 
This class can be used to work with any type of data.

class Information<T> {...}

We have created two objects of Information

var intObj = Information<Int>(data: 6)

var strObj = Information<String>(data: "Swift")


Here,

intObj - the type parameter T is replaced by Int. Now, the 
Information works with integer data.

stringObj - the type parameter T is replaced by String. Now, 
the Information works with string data.
*/

//------------------------------------------------------------------------------

// Type Constraints (limitation, restriction) in Swift Generics

/*
In general, the type parameter can accept any data type 
(Int, String, Double, ...).

However, if we want to use generics for some specific types 
(such as accepting data of number types) only, then we can 
use type constraints.

Here's how we create type constraints:

func addition<T: Numeric>(num1: T, num2: T) {
  ...
}

Here, <T: Numeric> adds constraints to the type parameter. 
It defines that T needs to conform to the Numeric protocol.

Note: Numeric is the built-in protocol for numeric values like Int and Double.
*/

//------------------------------------------------------------------------------

// Example: Type Constraints


/*
//create a generic function with type constraint
func addition<T: Numeric>(num1: T, num2: T) {

  print("Sum:", num1 + num2)
}

// pass Int value
addition(num1: 5, num2: 10)

// pass Double value
addition(num1: 5.5, num2: 10.8)
*/


//Output
// Sum: 15
// Sum: 16.3

/*
In the above example, we have created a generic function 
named addition(). Notice the expression:

<T: Numeric>

Here, the generic function is created with type constraints. 
This means addition() can only work with data types that 
conform to Numeric protocol (Int, Double, and so on).

Note: If we try to pass other types, say String, we'll get 
an error: argument type 'String' does not conform to the 
expected type 'Numeric'
*/

//------------------------------------------------------------------------------

// Advantages of Swift Generics

// 1. Code Reusability

/*
With the help of generics in Swift, we can write code that 
will work with different types of data. For example:

func genericFunction<T>(data: T) {...}

Here, we have created a generics function. This same function can be 
used to perform operations on integer data, string data, and so on.

If two functions have similar code implementations, resulting in code
duplication and requires values of different data types to maintain it.

We can make use of generics to avoid duplication of code.
*/


// 2. Used with Collections

// Swift array uses the concept of generics. For example:

// creating a integer type array
//var list1: Array<Int> = []

// creating a string type array
//var list2: Array<String> = []


/*
Here, list1 array that holds Int values and list2 array 
that holds String values.

Similar to arrays, dictionaries are also generic in Swift.
*/


/*

/*
struct is a keyword, Stack is a struct name and "Element"
inside the angle bracket is "type parameter".
*/
struct Stack<Element> {
    // variable "items" is an array of generic type.
    var items: [Element] = []

    /*
    Instance of struct are immutable so to make changes
    in the properties of struct, we need to declare methods
    of struct as "mutating" so that we can make changes of
    the values of the struct properties.

    The array of items uses the generic element, resulting 
    in the same type constraint for both push and pop methods.
    */
    mutating func push(_ item: Element) {
        items.append(item)
    }

    mutating func pop() -> Element {
        return items.removeLast()
    }
}
/*
While creating an instance of struct, we need to define the type for
the values that would be passed to the methods to assign it to the 
properties of struct.
*/
var obj1 = Stack<String>()
obj1.push("sunil")
obj1.push("James")
print(obj1.items)
*/
//------------------------------------------------------------------------------

// Generics allows you to write a function once and use it on different types.


/*
Generic programming is a way to write functions and data types 
while making minimal assumptions about the type of data being used.

Swift generics create code that does not get specific about underlying 
data types, allowing for elegant abstractions (Generic allow elegant
abstraction means it smartly allows to extract and show comman parts and
hide complex logic) that produce cleaner code with fewer bugs.

It allows you to write a function once and use it on different types.
*/

//------------------------------------------------

// struct Sunil{
//   var tat: Int
// }

// let obj1 = Sunil(tat: 5)
// print(obj1.tat)
// print("\(String(describing:obj1))")
// print(obj1)

//Output:
// Sunil(tat: 5)
// Sunil(tat: 5)

//------------------------------------------------

// CustomStringConvertible protocol in swift

/*
CustomStringConvertible is a protocol that allows the confirming type 
to provide their own representations to be used when converting instance 
to String.

We are normally using String(describing:) as a way for converting any 
instance of type to string.

If any type conforms to CustomStringConvertible, then String(describing:) 
and print(_:) use the instance’s description property.
*/

/*
Rectangle struct uses the default representation supplied by the swift 
standard library as follows:
*/

/*
struct Rectangle {
var height : Int
var width: Int
}

let rect = Rectangle(height: 10, width: 10)
//Rectangle(height: 10, width: 10)
print(rect)
//height is 10 and width is 10
print("height is \(rect.height) and width is \(rect.width)")
*/


/*
Now If Rectangle conforms to CustomStringConvertible then we can 
provide own representation by use of description property.

CustomStringConvertible protocol is used to convert instance to string.
It can be useful for debugging purpose to the check value of property of
particular instance.

Note:

1. Conform the type to "CustomStringConvertible" protocol.
Here, struct "Rectangle" conform to "CustomStringConvertible".

If any type conforms to CustomStringConvertible, then String(describing:) 
and print(_:) use the instance’s description property.

2. We can provide own representation by use of description property.

3. Whatever string you would return from the "description" instance
variable. That would display on console whenever you will print the
instance of the the defined type.

4. It would be helpful for debugging purpose.
*/

/*
struct Rectangle: CustomStringConvertible {

var height : Int
var width: Int

var description: String {

return "height is \(height) and width is \(width)"

}

}

let rect = Rectangle(height: 10, width: 10)
//height is 10 and width is 10
print(rect)
*/

//----------------------------------------------

/*
We can use generics within methods as well.

We introduced the concept of constraints in this example. 
An element passed into the print method must conform to 
the Numeric protocol, allowing us to convert 
the element to a Double before printing.
*/

/*
struct Distance <T: Numeric>{
  var length : T

  /*
    We can also write the printElement() method using a where clause:

    func printElement<T>(_ element: T) where T: CustomStringConvertible {
      print(element)
    }

  Deciding between using a where clause or not is a matter of taste 
  since the outcome of generics and constraints will be the same.
  */
  
  func printElement<T: Numeric>(_ element: T)  
  {
    print(element)
  }
}

var dis = Distance<Double>(length: 10.5)
dis.printElement(dis.length)
*/

//Intput: "10.5"
//Output:
//error: type 'String' does not conform to protocol 'Numeric'

//Input: 10.5
//Output: 10.5



//------------------------------------------------------------------------------

/*
An example of a generic you will have already encountered in Swift 
is the Optional type.

You can have an optional of any data type you want, even those types 
you create yourself, of course.

In other words, the Optional data type is generic over the type of value 
it might contain.
*/

/*
func addInts(x: Int, y: Int) -> Int {
  return x + y
}
*/

// addInts(x:y:) takes two Int values and returns their sum.

// let intSum = addInts(x: 1, y: 2)

// This is a simple example that demonstrates Swift’s type safety. 
// You can call this function with two integers, but not any other type.

/*
Swift is a type-safe language, which means the language helps 
you to be clear about the types of values your code can work 
with. If part of your code requires a String , type safety 
prevents you from passing it an Int by mistake.
*/

/*
As Optional type is also a generic type so in the below program
we made "Int", "String" and class "ShipmentCar" of Optional Type.
*/


/*

// Define class "ShipmentCar"
class ShipmentCar{
  // Two instance variable "seats" and "quality" of Optional Type.
  var seats:Int?
  var quality:String?
    
  init(seatQty:Int){
    seats = seatQty
  }

  func displaySeatQuality(){
    if let seatQuality = quality
    {
      print("The seat covering is made of:\(seatQuality)")
    }
  }
}

class CheckSeats{
  var seatExists:ShipmentCar?

}

var obj = ShipmentCar(seatQty:4)
var obj2:CheckSeats?
obj2 = CheckSeats()
/*
If you want to access the instance variable of a class A through
another class B then first create the instance of class A. Then
define an instance variable of Type class A in Class B. After that
assign the instance of class A to the instance variable of Class B
where the type of instance variable of class B is class A.
*/
obj2?.seatExists = obj
//Optional chaining, set leather quality of seats, only if seats exist.
obj2?.seatExists?.quality = "Leather"
obj.displaySeatQuality()
//Output: The seat covering is made of:Leather

*/

//------------------------------------------------------------------------------

// Adding Double values. Create a second function addDoubles(x:y:):

/*
func addDoubles(x: Double, y: Double) -> Double {
  return x + y
}

let doubleSum = addDoubles(x: 1.0, y: 2.0)
*/

/*
The function signatures of addInts and addDoubles are different, 
but the function bodies are identical.

Not only do you have two functions, but the code inside them is repeated.

Generics can be used to reduce these two functions to one and remove 
the redundant (unnecessary or not required) code.
*/


// func testCheck<T>(num: T){
//   print(num)
// }

// testCheck(num: 2.2)

//Output
// 2.2

//------------------------------------------------------------------------------

// Other Examples of Swift Generics

/*
The most common structures you use, such as arrays, dictionaries, 
optionals and results are generic types!
*/

//Arrays

/*

let numbers = [1, 2, 3]

let firstNumber = numbers[0]

Here, you create a simple array of three numbers and then take 
the first number out of that array.

Because Swift has type inference, you don’t have to explicitly 
define the types of your constants, but they both have an exact type.

numbers is an [Int] — that is, an array of integers — and firstNumber is an Int.

The Swift Array type is a generic type.

Generic types all have at least one type parameter, a placeholder 
for an as-yet unspecified other type.

You need to specify this other type in order to specialize the generic 
type and actually create an instance of it.

For instance, the type parameter of Array determines what’s in the array.

Your array is specialized so it can only contain Int values.
This supports Swift’s type safety. When you remove anything 
from that array, Swift — and more importantly you — know it 
must be an Int.

You can better see the generic nature of Array by adding a 
slightly longer version of the same code.
*/

/*
var numbersAgain: Array<Int> = []
numbersAgain.append(1)
numbersAgain.append(2)
numbersAgain.append(3)

let firstNumberAgain = numbersAgain[0]
*/

/*
Here you specify the type of numbersAgain using explicit generic syntax,
by putting Int in angle brackets after Array. 

You’ve provided Int as the explicit type argument for the type parameter.

Try appending something else to the array, like a String:

numbersAgain.append("All hail Lord Farquaad")

You’ll get an error — something like: Cannot convert value of type 
‘String’ to expected argument type ‘Int’. 

The compiler is telling you that you can’t add a string to an array of integers. 

As a method on the generic type Array, append is a so-called generic method.
Because this array instance is of the specialized type Array<Int>, its append 
method is also now specialized to append(_ newElement:Int). It won’t let you 
add something of an incorrect type.
*/

// class Sunil<T>{
//   //Generic type Array
//   var someVal: [T] = []

//   func addVal(ch: T){
//     someVal.append(ch)
//   }

// }

// var v = Sunil<String>()
// for i in "Sunil"{
//   v.addVal(ch: String(i))
// }
// print(v.someVal)

//Output:
//["S", "u", "n", "i", "l"]

//------------------------------------------------------------------------------

// Dictionaries

//Dictionaries are also generic types and result in type-safe data structures.

//Create the following dictionary, and then look up the country code for Freedonia:

/*
let countryCodes = ["Arendelle": "AR", "Genovia": "GN", "Freedonia": "FD"]
let countryCode = countryCodes["Freedonia"]
*/

/*
Check the types of both declarations. You’ll see that countryCodes 
is a dictionary of String keys and String values — nothing else can 
ever be in this dictionary. The formal generic type is Dictionary.
*/



//Optionals

/*
In the example above, note the type of countryCode is String?. 
This is in fact just a shorthand for Optional.

Optional is a generic type.

Here the compiler enforces that you can only access the dictionary 
with string keys and you always get string values returned.

An optional type is used to represent countryCode, because there might 
not be a value corresponding to that key. 

If you try to look up “The Emerald City”, for example, the value of 
countryCode would be nil, as it doesn’t exist in your dictionary.

Add the following to your playground to see the full explicit syntax 
for creating an optional string:
*/

/*
let optionalName = Optional<String>.some("Princess Moana")
if let name = optionalName {}
*/

//Check the type of name, which you’ll see is String.

/*
Optional binding, that is, the if-let construct, is a generic 
transformation of sorts.

It takes a generic value of type T? and gives you a generic value of type T.

That means you can use if let with any concrete type.
*/


// -Optional is a generic type means any type can be made Optional.
// It means Int, Float, Double, class any type can be made Optional.

// var someVal: Int? = 3
// print(someVal!) //3

// var someVal: Double? = 3.5
// print(someVal!) //3.5

// var someVal: String? = "3.5"
// print(someVal!) //3.5

/*
class Human{
  var heartBeat: Int?
  
}

class DeadAlive{
  var deadOrAlive: Human?
}

var obj1 = Human()
var obj2: DeadAlive?
obj2 = DeadAlive()

obj2?.deadOrAlive = obj1

obj2?.deadOrAlive?.heartBeat = 4
print(obj1.heartBeat!)
*/

//Output:
//4


// -Optional binding (if let) is also a generic. It takes a generic 
// value of type T? and gives you a generic value of type T.

/*
var someVal: [Int]? = [1,2,3]

if let var1 = someVal{
  print(var1)
}
*/

//Output:
//[1, 2, 3]

// -Dictionaries: It is also generic type. It means, it can take
// any type of data.

/*
var someVal: [[Int]:[String]] = [
  [1,2,3]:["af","as","al"],
  [4,5,6]:["bf","bg","bh"],
  [7,8,9]:["ed","es","ew"]
]

print(someVal)
*/

//Output:
//[[4, 5, 6]: ["bf", "bg", "bh"], [1, 2, 3]: ["af", "as", "al"], [7, 8, 9]: ["ed", "es", "ew"]]
//------------------------------------------------------------------------------

//Using generic return types

/*
func convertToArray<T>(_ element: T) -> [T] {
    return [element]
}

let name = "Antoine"
let arrayOfNames = convertToArray(name)
print(arrayOfNames)
*/

//Output:
//["Antoine"]

/*
While this example is useless since you can create such an array 
directly, it nicely demonstrates the concept of returning a generic type.
*/

//------------------------------------------------------------------------------

// When should I use generics?

/*
While generics allow you to write reusable code.

You should always start with strongly typed classes and functions 
and only opt-in to generics if you know you need the flexibility 
provided by generic code.

Generics make your code more complex to maintain with the returned 
benefit of reusable code and less duplication.

There is a tradeoff for you to make, which might be easier to accept 
based on your experience with generics.

If you’re just getting started with Swift, I would like you to know 
that it’s okay if you start with writing less efficient, duplicated code.

My approach to determining whether generics are needed comes down to 
finding code used in multiple places and making that reusable in a 
single place. The outcome is a single piece of code to maintain and 
less duplication.

In other words, consider whether you need the complexity of generics 
and only opt-in when you know you’ll benefit from the code reusability.

If you feel comfortable enough to write generics, it will be a better 
solution since you’ll prepare your code for future cases in which you 
might need the reusable functionality. 
*/

/*
Conclusion:

Generics allow you to prevent code duplicating by creating reusable code.

Writing generic code should not be a goal on its own, and you should feel 
fine staying away from them if you’re uncomfortable writing them. Though, 
generics allow you to create sustainable code and prepare for future cases 
in which you need to reuse the same piece of code.
*/
//------------------------------------------------------------------------------


// Results

/*
Result is a new type in Swift 5.

Like Optional, it is a generic enum with two cases.

Instead of something or nothing, a result is either a success or failure. 

Each case has its own associated generic type, success has a value 
and failure has an Error.

Consider this case, where the royal magician recruits you to cast 
some spells. Known spells generate a symbol, but unknown spells fail. 
The function would look something like this:
*/

/* We do not need to write this Result enum type as it is pre-defined.

@frozen
public enum Result<Success, Failure: Error> {
  /// A success, storing a `Success` value.
  case success(Success)

  /// A failure, storing a `Failure` value.
  case failure(Failure)
}

*/


/*

//"MagicError" is the associated type of "failure" case
//of "Result" enum type.
enum MagicError: Error {
  case spellFailure
}

/*
-"Result<String, MagicError>" : "String" is an associated type of
"success" case and "MagicError" is an associated type of "failure" 
case of "Result" enum type.

-Result allows you to write functions that return a value or 
an error without having use try syntax.
*/
func cast(_ spell: String) -> Result<String, MagicError> {
  switch spell {
  case "flowers":
    //Result is like Optional so it can have either success or failure value.
    return .success("💐")
  case "stars":
    return .success("✨")
  default:
    return .failure(.spellFailure)
  }
}


let result1 = cast("flowers") // success("💐")
print(result1)
/*
As an added bonus, the generic specification of the failure 
case means that you don’t need to check the type as you would 
with a catch block.

If there’s an error, you can be certain there will be a MagicError 
in the value associated with the .failure case.
*/
let result2 = cast("avada kedavra") // failure(generics.MagicError.spellFailure)
print(result2)

*/

//------------------------------------------------------------------------------

// Writing a Generic Data Structure

/*
A queue is a data structure kind of like a list or a stack, 
but one to which you can only add new values to the end 
(enqueue them) and only take values from the front (dequeue them). 

The Queen,like you to write functionality to help keep track of 
royal subjects waiting in line to speak with her.

Add the following struct declaration to the end of your playground:

struct Queue<Element> {
}


Queue is a generic type with a type argument, Element, in its 
generic argument clause.

Another way to say this is, Queue is generic over type Element. 
For example, Queue<Int> and Queue<String> will become concrete 
types of their own at runtime, that can only enqueue and dequeue 
strings and integers, respectively.


private var elements: [Element] = []

You’ll use this array to hold the elements, which you initialize 
as an empty array. 

Note that you can use Element as if it’s a real type, even though 
it’ll be filled in later. 

You mark it as private because you don’t want consumers of Queue 
to access elements.

You want to force them to use methods to access the backing store.

Finally, implement the two main queue methods:

mutating func enqueue(newElement: Element) {
  elements.append(newElement)
}

mutating func dequeue() -> Element? {
  guard !elements.isEmpty else { return nil }
  return elements.remove(at: 0)
}


Again, the type parameter Element is available everywhere in 
the struct body, including inside methods. 

Making a type generic is like making every one of its methods 
implicitly generic over the same type. You’ve implemented a 
type-safe generic data structure, just like the ones in the 
standard library.

Enqueuing waiting subjects by adding their royal id to the queue:
*/
 
/*
A queue is a data structure kind of like a list or a stack, 
but one to which you can only add new values to the end 
(enqueue them) and only take values from the front (dequeue them).
*/


/*

/*
-Writing a Generic Data Structure
-Queue (data structure that holds or store data) is a generic type
with a type argument, Element, in its generic argument clause.

-"struct" keyword is used to define Structures.
-"Queue" (data structure that holds or store data) is a generic type.
- <> : generic argument clause
- "Element" - Type argument
- Another way to say this is, Queue is generic over type "Element".
*/
struct Queue<Element> {

  /*
  -Array "elements" is initialised as an empty array.
  -"[Element]" : Here, Element is a generic type.
  -Marked it as private because we don’t want consumers 
  of Queue to access elements. 
  */
  private var elements: [Element] = []

  mutating func enqueue(newElement: Element) {
    elements.append(newElement)
  }

  mutating func dequeue() -> Element? {
    guard !elements.isEmpty else { return nil }
    return elements.remove(at: 0)
  }

}

var q = Queue<Int>()

q.enqueue(newElement: 4)
q.enqueue(newElement: 2)

for _ in 1...4{
  if let temp = q.dequeue(){
    print("Element removed from queue: \(temp)")
  }else{
    print("The \"elements\" array has no value to remove from it.")
  }

}

*/

//Output:
// Element removed from queue: 4
// Element removed from queue: 2
// The "elements" array has no value to remove from it.
// The "elements" array has no value to remove from it.

//------------------------------------------------------------------------------

//Writing a Generic Function

/*

/*
-The function is generic over two types that you’ve named Key and Value.
-The only parameter is a dictionary with a key-value pair of type Key 
and Value. 
-The return value is an array of tuples of the form (Key, Value).
-At runtime, each possible Key and Value will act as a separate function, 
filling in the concrete types in the function declaration and body.
*/
func pairs<Key, Value>(from dictionary: [Key: Value]) -> [(Key, Value)] {
  return Array(dictionary)
}

/*
Of course, since you can’t control the order in which the dictionary 
items go into the array.
*/

//You can use pairs(from:) on any valid dictionary and it will work.
//The first call to pairs(from:) returns an array of (String, Int) tuples. 
let somePairs = pairs(from: ["minimum": 199, "maximum": 299])
print(somePairs)
// result is [("maximum", 299), ("minimum", 199)]

//The second call uses a flipped order of types in the tuple and 
//returns an array of (Int, String) tuples.
let morePairs = pairs(from: [1: "Swift", 2: "Generics", 3: "Rule"])
print(morePairs)
// result is [(1, "Swift"), (2, "Generics"), (3, "Rule")]

*/

/*
You created a single function that can return different types with 
different calls. You can see how keeping your logic in one place can 
simplify your code. Instead of needing two different functions, you 
handled both calls with one function.
*/

/*
Now that you know the basics of creating and working with generic 
types and functions, it’s time to move on to some more advanced 
features. You’ve already seen how useful generics are to limit 
things by type, but you can add additional constraints as well as 
extend your generic types to make them even more useful.
*/

//------------------------------------------------------------------------------

//Constraining a Generic Type

//Requests a function to sort an array and find the middle value.

/*
-For sorted() to work, the elements of the array need to be Comparable. 
-You need to somehow tell Swift that mid can take any array as long as 
the element type implements Comparable.
-Here, you use the : syntax to add a type constraint to the generic 
type parameter T. 
-You can now only call the function with an array of Comparable elements, 
so that sorted() will always work!
*/

/*
func mid<T: Comparable>(array: [T]) -> T? 
{
  guard !array.isEmpty else { return nil }
  return array.sorted()[(array.count - 1) / 2]
}

print(mid(array: [3, 5, 1, 2, 4])!) // 3
*/
//------------------------------------------------------------------------------

//Cleaning Up the Add Functions

/*
-First, you create a Summable protocol that says any type that conforms 
must have the addition operator + available. 
-Then, you specify that the Int and Double types conform to it.
-You’ve reduced your two functions (actually more, since you would have 
needed more for other Summable types) down to one and removed the 
redundant code. 
*/


/*

protocol Summable 
{ 
  static func +(lhs: Self, rhs: Self) -> Self 
}

extension Int: Summable {}
extension Double: Summable {}
extension String: Summable {}

/*
Now using a generic parameter T and a type constraint, you can 
create a generic function add:
*/

func add<T: Summable>(x: T, y: T) -> T {
  return x + y
}

//We can use the new function on both integers and doubles:

let addIntSum = add(x: 1, y: 2) // 3
print(addIntSum)
let addDoubleSum = add(x: 1.0, y: 2.0) // 3.0
print(addDoubleSum)
let addString = add(x: "Generics", y: " are Awesome!!! :]")
print(addString)  // Generics are Awesome!!! :]

*/
//------------------------------------------------------------------------------

//Extending a Generic Type

/*
struct Queue<Element> {
  var elements: [Element] = []

  mutating func enqueue(newElement: Element) {
    elements.append(newElement)
  }

  mutating func dequeue() -> Element? {
    guard !elements.isEmpty else { return nil }
    return elements.remove(at: 0)
  }
}

var q = Queue<Int>()

q.enqueue(newElement: 4)
q.enqueue(newElement: 2)
q.enqueue(newElement: 7)
q.enqueue(newElement: 1)
print("Queue List: \(q.elements)") //Queue List: [4, 2, 7, 1]
// q.dequeue()
// q.dequeue()
// q.dequeue()
// q.dequeue()

extension Queue {
  func peek() -> Element? {
    return elements.first
  }
}

q.enqueue(newElement: 5)
q.enqueue(newElement: 3)

if let temp = q.peek(){
  print("First element is: \(temp)")  //First element is: 4
}else{
  print("elements array is empty")
}
*/

//------------------------------------------------------------------------------
/*
struct Queue<Element: Comparable> {
  var elements: [Element] = []

  mutating func enqueue(newElement: Element) {
    elements.append(newElement)
  }

  mutating func dequeue() -> Element? {
    guard !elements.isEmpty else { return nil }
    return elements.remove(at: 0)
  }
}

var q = Queue<Int>()

q.enqueue(newElement: 4)
q.enqueue(newElement: 4)
q.enqueue(newElement: 4)
q.enqueue(newElement: 4)
print("Queue List: \(q.elements)") //Queue List: [4, 4, 4, 4]
// q.dequeue()
// q.dequeue()
// q.dequeue()
// q.dequeue()

extension Queue {

  func isHomogeneous(){
    var flag = 0
    for i in 0..<(elements.count){
      if elements[i] == elements[i+1]{
        flag = 1
        if i == (elements.count - 2){
          break
        }else{
          continue
        }
        
      }else{
        print("All elements are not equal")
        flag = 0
        break
      }
    }
    if flag == 1 {
      print("All elements are equal") //All elements are equal
    }
    
    
  }
}

q.enqueue(newElement: 4)
q.enqueue(newElement: 4)

q.isHomogeneous()
*/
//------------------------------------------------------------------------------

//Subclassing a Generic Type

/*
-Swift has the ability to subclass generic classes.
-This can be useful in some cases, such as to create 
a concrete subclass of a generic class.
-Here we define a Box class. 
-The box can contain anything, and that’s why it’s a generic class.
-There are two ways you could subclass Box:
1. You might want to extend what the box does and how it works 
but keep it generic, so you can still put anything in the box;
2. You might want to have a specialized subclass that always 
knows what’s in it.
-You define two Box subclasses here: Gift and ShoeBox.
*/



/*

class Box<T> {
  // Just a plain old box.
}

/*
-Gift is a special kind of Box, separated so that you may have 
different methods and properties defined on it, such as wrap().
-However, it still has a generic on the type, meaning it could 
contain anything. 
*/
class Gift<T>: Box<T> {
  // By default, a gift box is wrapped with plain white paper
  func wrap() {
    print("Wrap with plain white paper.")
  }
}

class Rose {
  // Flower of choice for fairytale dramas
}

/*
ValentinesBox, though constructed using generics, operates as a 
standard subclass with methods that may be inherited and overridden 
from a superclass. How elegant!
*/
class ValentinesBox: Gift<Rose> {
  // A rose for your valentine
  override func wrap() {
    print("Wrap with ♥♥♥ paper.")
  }
}

/*
Shoe and GlassSlipper, a very special type of shoe, have been declared, 
and can be placed within an instance of ShoeBox for delivery (or 
presentation to an appropriate suitor).
*/
class Shoe {
  // Just regular footwear
}

class GlassSlipper: Shoe {
  // A single shoe, destined for a princess
}

class ShoeBox: Box<Shoe> {
  // A box that can contain shoes
}

let box = Box<Rose>() // A regular box that can contain a rose
let gift = Gift<Rose>() // A gift box that can contain a rose
/*
Notice that the ShoeBox initializer doesn’t need to take the generic 
type parameter anymore, since it’s fixed in the declaration of ShoeBox.
*/
let shoeBox = ShoeBox()

let valentines = ValentinesBox()

gift.wrap() // Wrap with plain white paper.
valentines.wrap() // Wrap with ♥♥♥ paper.

*/
//------------------------------------------------------------------------------

//Enumerations With Associated Values

/*
enum Reward<T> 
{
  case treasureChest(T)
  case medal(T)

  var message: String 
  {
    switch self 
    {
      case .treasureChest(let treasure):
        return "You got a chest filled with \(treasure)."
      case .medal(let trophy):
        return "Stand proud, you earned a medal! \(trophy)"
    }
  }
}

let message = Reward.treasureChest("💰").message
print(message) //You got a chest filled with 💰.
let message1 = Reward.medal("Hurray").message
print(message1) //Stand proud, you earned a medal! Hurray
*/

//------------------------------------------------------------------------------

/*
func makeArray<Item>(repeating item: Item, numberOfTimes: Int) -> [Item] {
    var result: [Item] = []
    for _ in 0..<numberOfTimes {
        result.append(item)
    }
    return result
}
print(makeArray(repeating: "knock", numberOfTimes: 4))

*/

//Output:
//["knock", "knock", "knock", "knock"]

//------------------------------------------------------------------------------

//You can make generic forms of functions and methods, as well as 
//classes, enumerations, and structures.

// Reimplement the Swift standard library's optional type

/*
enum OptionalValue<Wrapped> {
    case none
    case some(Wrapped)
}
var possibleInteger: OptionalValue<Int> = .none
possibleInteger = .some(100)
print(possibleInteger) //some(100)
*/

//------------------------------------------------------------------------------

/*
func anyCommonElements<T: Sequence, U: Sequence>(_ lhs: T, _ rhs: U) -> Bool
    where T.Element: Equatable, T.Element == U.Element
{
    for lhsItem in lhs {
        for rhsItem in rhs {
            if lhsItem == rhsItem {
                return true
            }
        }
    }
    return false
}
print(anyCommonElements([1, 2, 3], [4]))  //false
*/

/*
Use where right before the body to specify a list of requirements—for example, 
to require the type to implement a protocol, to require two types to be the 
same, or to require a class to have a particular superclass.
*/

//------------------------------------------------------------------------------

/*
Modify the anyCommonElements(_:_:) function to make a function that 
returns an array of the elements that any two sequences have in common.
*/

/*

func anyCommonElements<T: Sequence, U: Sequence>(_ lhs: T, _ rhs: U) -> [T.Element]
    where T.Element: Equatable, T.Element == U.Element
{
  var arrayOfNum: [T.Element] = []
    for lhsItem in lhs {
        for rhsItem in rhs {
            if lhsItem == rhsItem {
                arrayOfNum.append(lhsItem)
            }
        }
    }
    return arrayOfNum
}
print(anyCommonElements([1, 2, 3, 7], [3, 1, 7]))  // [1, 3, 7]

*/


//Writing <T: Equatable> is the same as writing <T> ... where T: Equatable.

//------------------------------------------------------------------------------