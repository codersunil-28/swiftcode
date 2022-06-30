// Protocols

/*
A protocol defines a blueprint of methods or properties 
that can then be adopted by classes (or any other types).

We use the protocol keyword to define a protocol. For example:
*/

/*
protocol Greet {

  // blueprint of a property 
  var name: String { get }


  // blueprint of a method 
  func message() 
}    
*/

/*
Here:

Greet - name of the protocol
name - a gettable property
message() - method definition without any implementation

Notes:

-The protocol just holds the method or properties definition, 
not their actual body.

-The protocol must specify whether the property will be gettable 
or gettable and settable.
*/

//---------------------------------------------------------------------------

// Conform(comply with rules) Class To Swift Protocol

/*
In Swift, to use a protocol, other classes must conform to it. 
After we conform a class to the protocol, we must provide an 
actual implementation of the method.

Here's how to conform a class to the protocol,
*/

/*
protocol Greet {

  // blueprint of a property 
  var name: String { get }


  // blueprint of a method 
  func message() 
}    
*/


// conform class to Greet protocol

/*
class Employee: Greet {

  // implementation of property
  var name = "Perry"

  // implementation of method
  func message() {
    print("Good Morning!")
  }
}
*/

/*
Here, we have conformed the Employee class to the Greet protocol. 
So, we must provide an implementation of the name property and 
the message() method.
*/

//---------------------------------------------------------------------------

// Example 1: Swift Protocol

/*
protocol Greet {
  
  // blueprint of property
  var name: String { get }

  // blueprint of a method 
  func message() 
} 

// conform class to Greet protocol
class Employee: Greet {

  // implementation of property
  var name = "Sunil"

  // implementation of method
  func message() {
    print("Good Morning", name)
  }
}

var employee1 = Employee()
employee1.message()
*/

// Output
//Good Morning Sunil

/*
In the above example, we have created a protocol named Greet. 
The protocol contains a blueprint of the name property and the 
message() method.

Here, the Employee class conforms to Greet and provides the actual 
implementation of name and message().
*/

//---------------------------------------------------------------------------

// Example 2: Swift Protocol To Calculate Area

/*
protocol Polygon {

  func getArea(length: Int, breadth: Int)
}

// conform the Polygon protocol
class Rectangle: Polygon {

  // implementation of method
  func getArea(length: Int, breadth: Int) {
    print("Area of the rectangle:", length * breadth)
  }
}

// create an object
var r1 = Rectangle()

r1.getArea(length:5, breadth: 6)
*/

//Output:
//Area of the rectangle: 30

/*
In the above example, we have created a protocol named Polygon. 
The protocol contains a blueprint of the getArea() method with 
two parameters: length and breadth.

Here, the Rectangle class conforms to Polygon and provides 
the actual implementation of the getArea() method.

Implementation of getArea(length: Int, breadth: Int) 
method in class Rectangle.

func getArea(length: Int, breadth: Int) {
  print("Area of the rectangle:", length * breadth)
}
*/

//---------------------------------------------------------------------------

//Conforming Multiple Protocols

/*
In Swift, a class can also conform to multiple protocols. For example:

protocol Sum {
  ...
}

protocol Multiplication {
  ...
}

class Calculate: Sum, Multiplication {
  ...
}


Here, the class named Calculate conforms to the Sum and
Multiplication protocols.
*/

//---------------------------------------------------------------------------

//Example 3: Conforming Multiple Protocols

/*
// create Sum protocol
protocol Sum {

  func addition()
}

// create Multiplication protocol
protocol Multiplication {

  func product()
}

// conform class to two protocols
class Calculate: Sum, Multiplication {

  var num1 = 0
  var num2 = 0

  func addition () {
    let result1 = num1 + num2
    print("Sum:", result1)
  }

  func product () {
    let result2 = num1 * num2
    print("Product:", result2)
  }
                   
}

// create an object
var calc1 = Calculate()

// assign values to properties
calc1.num1 = 5
calc1.num2 = 10

// access methods
calc1.addition()
calc1.product()
*/

//Output
//Sum: 15
//Product: 50

/*
In the above example, we have created two protocols: Sum and 
Multiplication. Also, we have created a class named Calculate 
that conforms to these two protocols.

We have created a blueprint of methods named addition() and product() 
inside the Sum and Multiplication protocols respectively.


protocol Sum {

  func addition()
}

protocol Multiplication {

  func product()
}


Since Calculate conforms to Sum and Multiplication, 
we have provided an actual implementation of addition() 
and product() inside the class.

Finally, we have accessed these methods using the calc1 
object of the class.


// access methods
calc1.addition()
calc1.product()
*/

//---------------------------------------------------------------------------

//Swift Protocol Inheritance

//Similar to classes, protocols can inherit other protocols. For example:

/*
protocol Car {
  ...
}

protocol Brand: Car {
  ...
}
*/

/*
Here, the Brand protocol inherits the Car protocol. 
Now, if any class implements Brand, it should provide 
implementations for all properties of both Car and Brand.
*/

//Example 4: Swift Protocol Inheritance

/*
protocol Car {
  var colorOptions: Int { get }
}

// inherit Car protocol
protocol Brand: Car {
  var name: String { get }
}

class Mercedes: Brand {

  // must implement properties of both protocols 
  var name: String = ""
  var colorOptions: Int = 0
}

var car1 = Mercedes()
car1.name = "Mercedes AMG"
car1.colorOptions = 4

print("Name:", car1.name)
print("Color Options:", car1.colorOptions)
*/

//Output:
//Name: Mercedes AMG
//Color Options: 4


/*
In the above example, the Brand protocol inherits the Car protocol.
Here, the Mercedes class only conforms to Brand. But since Brand 
inherits Car, we need to implement all the properties of both Car
and Brand.
*/

//---------------------------------------------------------------------------

//Note: A protocol can inherit multiple protocols. For example:

/*
protocol A {
  ...
}
protocol B {
  ... 
}

protocol C: A, B {
  ...
}
*/

//---------------------------------------------------------------------------

// Protocol Extensions

//In Swift, we can extend protocols using the extension keyword. For example:

/*
// protocol definition
protocol Brake {
  func applyBrake()
}

// define class that conforms Brake
class Car: Brake {
  var speed: Int = 0

  func applyBrake() {
    print("Brake Applied")
  }
}

// extend protocol
extension Brake {
  func stop() {
    print("Engine Stopped")
  }
}

let car1 = Car()
car1.speed = 61
print("Speed:", car1.speed)

car1.applyBrake()

// access extended protocol
car1.stop()
*/

//Output:
//Speed: 61
//Brake Applied
//Engine Stopped

/*
In the above example, we have created the protocol Brake that 
defines the function applyBrake().

We have extended the Brake protocol and defined the stop() 
function inside it.

// extend protocol
extension Brake {
  func stop() {
    print("Engine Stopped")
  }
}

We can access the extended protocol using the car1 object.

// access extended protocol
car1.stop()
*/

//---------------------------------------------------------------------------

// Mutating Functions

/*
In swift, classes are reference type whereas structures 
and enumerations are value types.

The properties of value types (structures and enumerations are value types.) 
cannot be modified within its instance methods by default. 

In order to modify the properties of a value type, you have to use 
the mutating keyword in the instance method.

With this keyword, your method can then have the ability to mutate 
the values of the properties and write it back to the original 
structure when the method implementation ends.
*/

// Cannot change the property of Struct instance as it is immutable.

/*
struct Car{
    var gear: String = "First"

    func gearChange(){
        gear = "\(gear) gear"
        print(gear)
    }
}

var checkGear = Car()
checkGear.gearChange()
*/

//Output:
/*
error: cannot assign to property: 'self' is immutable
        gear = "\(gear) gear"
        ^~~~
*/

//------------------------------

// Instance of a class is mutable so we can change the property of an instance.

/*
class Car{
    var gear: String = "First"

    func gearChange(){
        gear = "\(gear) gear"
        print(gear)
    }
}

let checkGear = Car()
checkGear.gearChange()
*/

//Output:
//First gear

//------------------------------

/*
struct Car{
    var gear: String = "First"

    /*
    Cannot change the property "gear" of Struct instance "checkGear"
    as it is immutable. To change the property value "gear" of 
    Struct instance "checkGear". We need to make the instance method
    mutable by using the keyword "mutating" before "func" keyword.
    */
    mutating func gearChange(){
        gear = "\(gear) gear"
        print(gear)
    }
}

var checkGear = Car()
checkGear.gearChange()
*/

//Output:
//First gear

//--------------------------------------------------------------------------

/*
// "struct" keyword, "Stack" struct name.
struct Stack {

    /*
    -When an instance property is defined in Swift using var, 
    a getter and setter is automatically generated.
    -If you want to implement an instance property using "var"
    without an exposed(unprotected or accessible) setter then indicate a 
    variable as private(set).
    -Exposed setter means unprotected or accessible setter. 
    Any object can access exposed setter from outside the class 
    and make changes to the instance property defined as "var".
    -To avoid write access to instance property publically or 
    outside of class defined as "var". Make the exposed setter 
    private by indicating a variable as private(set).
    */

    // private(set): makes the setter of an instance variable inaccessible.
    private(set) var items = [Int]() // Empty items array
    
    /*
    -To change the property value of value types(Structures and Enumerations)
    We need to make the instance method mutable by using the keyword 
    "mutating" before "func" keyword.

    -Write "_" before the parameter name to use no argument label
    in the function call.
    */
    mutating func push(_ item: Int) {
        items.append(item)
    }
    
    /*
    -There is another data type in Swift called Optional, 
    whose default value is a null value (nil). 
    -You can use optional when you think that a variable or 
    constant may contain a value or may not. 
    -An optional type may contain a value or absent a 
    value (a null value).
    -You can simply represent a Data type as Optional by appending
    ! or ? to the Type. 
    -If an optional contains a value in it, it returns value as 
    Optional<Value>, if not it returns nil.
    -"Int?": It is an Optional return data type that may return a
    value or nil. 
    */

    mutating func pop() -> Int? {
        if !items.isEmpty {
            //popping the last element from the array and returning it.
           return items.removeLast()
        }
        return nil
    }
}

var stack = Stack()
stack.push(4)
stack.push(78)
stack.items // [4, 78]
if let temp = stack.pop(){
    print(temp)  //78
}
stack.items // [4]
*/

//-----------------------------------------------------------------------

/*
If you try to access the optional variable directly:
expression implicitly coerced from 'String?' to 'Any'
print(sunil)
      ^~~~~
It means the expression "sunil" in the print statement has been
implicitly coerced (forced) to changed from 'String?' to 'Any'.

-We need to unwrap the option variable to access its value.
*/

/*
var sunil: String? = "Sun"
print(sunil)
*/

//------------------------------------------

// use "if let" to unwrap the value of optional variable.

/*
var sunil: String? = "Sun"

/*
If there would be value in the optional variable "sunil" then
its value would automatically get unwrapped and assigned to 
the "name" variable. After that body of "if" statement would
get executed.
*/
if let name = sunil {
    print(name)
}
*/

//Output:
//Sun

//-----------------------------------------------------------------------

/*
-You can simply represent a Data type as Optional by appending
! or ? to the Type. 
-If an optional contains a value in it, it 
returns value as Optional<Value>, if not it returns nil.
-The default value of optional variable is "nil".
*/

/*
var someValue:Int?
var someAnotherValue:Int!
print(someValue)
print(someAnotherValue)
*/

//Output:
//nil
//nil

//-----------------------------------------------------------------------

/*
-You can simply represent a Data type as Optional by appending
! or ? to the Type. 
-If an optional contains a value in it, it 
returns value as Optional<Value> if the value is not unwrapped.
-If an optional does not contains a value in it, then it returns nil.
*/

/*
let someValue:Int? = 5
let someoneValue:Int! = 7
print(someValue)
/*
-We can unwrap an optional by appending ! character at the end of 
the variable/constant.
-This kind of unwrapping mechanism should only be used when you are 
certain that the optional will sure have a value when you access it.
*/
print(someValue!)
print(someoneValue)

/*
-When you access the value of an optional if it has a value without unwrapping
then it display the value in this format: Optional<Value>.
-In order to access the <Value> from it, we need a mechanism called unwrapping.
*/

*/

//Output:
//Optional(5)
//5
//Optional(7)

//-----------------------------------------------------------------------

/*
-A struct is a data type that organizes property and methods in a unit.
-It has almost the same interface as a class with a few subtle differences.
-For example, once you set up a struct’s properties, it automatically 
generates memberwise initializers while a classes will not.
-The other significant difference is that while structs are value types, 
classes are reference types.
-when a struct instance is passed around, each time a new copy is created, 
whereas a class instance would use to the same reference when passed around. 
-Changing a value of a property of class instance will not change 
the reference the object points to.
*/

/*
struct Person {
  
  var name: String
}

var person1 = Person(name: "Kyle")


Here, values inside the parenthesis () are automatically assigned 
to corresponding properties of the struct. This is called a 
memberwise initializer.
*/

//--------------------

/* Here, we changed the property value of struct through instance.
struct S 
{ 
    var data: Int = -1 
}
var objS = S()
					
objS.data = 42						
print("\(objS.data)")  //42
*/

//--------------------

/* We cannot change the value of struct property via function.
We need to mutate the function to change the value of struct property.


struct S 
{ 
    var data: Int = -1 

    func someF(a: Int){
        data = a
    }
}
var objS = S()
objS.someF(a: 32)					
						
print("\(objS.data)")	
*/

//Output:
/*
error: cannot assign to property: 'self' is immutable
        data = a
        ^~~~
*/

//-----------------------------------------------------------------------

/*
What effect does the mutating function have on a struct? 
Well, it basically creates a new copy of the struct with 
modified value of the the property. The effect of the mutating 
keyword is as simple as this.

If a method is defined as immutable in the protocol, but later 
adds mutating keyword in the struct function, it is regarded as 
two different functions and as a result struct fails to conform 
to the protocol. Thus, it is in our best interest to consider 
adding the keyword "mutating" in the definition of the function 
within protocol to conform the struct to the protocol and make 
the code works.
*/

/*
protocol HasLicence{
    mutating func assignLicence(num: String)
}

struct Driver: HasLicence{
    var drivingLicenceNum: String?

    mutating func assignLicence(num: String){
        drivingLicenceNum = num
    }
}

var objS = Driver()
objS.assignLicence(num: "cfed")
print((objS.drivingLicenceNum)!)
*/

//Output:
//cfed

//-------------------------------------------------------------------------

//Classes, enumerations, and structs can all adopt protocols.


/*

//"protocol" keyword, "ExampleProtocol" protocol name.
protocol ExampleProtocol {
    // gettable function definition without instruction body.
    var simpleDescription: String { get }
    /*
    We made "adjust()" function mutable because if struct conform
    to the protocol then mutating the function is required as the
    instance of struct is immutable. Whereas, the class instance
    will ignore the "mutating" keyword in protocol. The declaration 
    of SimpleClass doesn’t need any of its methods marked as mutating 
    because methods on a class can always modify the class.
    */
    mutating func adjust()
}

//----------

class SimpleClass: ExampleProtocol {
    var simpleDescription: String = "A very simple class."
    var anotherProperty: Int = 69105
    func adjust() {
        simpleDescription += "  Now 100% adjusted."
    }
}
var a = SimpleClass()
a.adjust()
let aDescription = a.simpleDescription
print(aDescription)

//Output:
//A very simple class.  Now 100% adjusted.

//----------

// struct "SimpleStructure" here conform to "ExampleProtocol" protocol.
struct SimpleStructure: ExampleProtocol {
    var simpleDescription: String = "A simple structure"
    /*
    struct instance is immutable therefore we mutated the 
    struct function so we can make changes to the property
    value in the instance function.
    */
    mutating func adjust() {
        simpleDescription += " (adjusted)"
    }
}
var b = SimpleStructure()
b.adjust()
let bDescription = b.simpleDescription
print(bDescription)

*/

//Output:
//A simple structure (adjusted)

//-------------------------------------------------------------------------

/*
Add another requirement to ExampleProtocol. What changes do you 
need to make to SimpleClass and SimpleStructure so that they still 
conform to the protocol?
*/

/*

protocol ExampleProtocol {
    //property in protocol must have explicit { get } or { get set } specifier
    var simpleDescription: String { get }
    mutating func adjust()
    var anotherProperty: Int { get }
}

//----------------

class SimpleClass: ExampleProtocol {
    var simpleDescription: String = "A very simple class."
    var anotherProperty: Int = 69105
    func adjust() {
        simpleDescription += "  Now 100% adjusted."
        anotherProperty = 28
    }
}
var a = SimpleClass()
a.adjust()
let aDescription = a.simpleDescription
let someValue = a.anotherProperty
print("\(aDescription) \(someValue)")

//Output:
//A very simple class.  Now 100% adjusted. 28

//------------------

struct SimpleStructure: ExampleProtocol {
    var simpleDescription: String = "A simple structure"
    var anotherProperty: Int = 32105
    mutating func adjust() {
        simpleDescription += " (adjusted)"
        anotherProperty += 1
    }
}
var b = SimpleStructure()
b.adjust()
let bDescription = b.simpleDescription
let someValue1 = b.anotherProperty
print("\(bDescription) \(someValue1)")

*/

//Output:
//A simple structure (adjusted) 32106

//-------------------------------------------------------------------------