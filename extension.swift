// Swift Extension

/*
In Swift, we can add new functionality to existing types.
We can achieve this using an extension.

We use the extension keyword to declare an extension. For example:
*/

/*
// class definition 
class Temperature {
  ...
}

// extension of Temperature class
extension Temperature {

  // add new methods 
} 
*/

/*
Here, we have created an extension of the Temperature class 
using the extension keyword.

Now, inside the extension, we can add new functionality to Temperature.
*/

//----------------------------------------------------------------------

// Example: Swift Extension

/*

// class definition
class Temperature {
  var celsius: Double = 0

  func setTemperature(celsius: Double) {
    self.celsius = celsius
    print("Celsius:", celsius)
  }
}

// declare an extension
extension Temperature {

  // add a new method to Temperature class
  func convert() {
    var fahrenheit = (celsius * 1.8) + 32
    print("Fahrenheit:", fahrenheit)
  }
}

// class initialization
let temp1 = Temperature()
temp1.setTemperature(celsius: 16)

// access extension method using class object
temp1.convert()

*/

//Output
//Celsius: 16.0
//Fahrenheit: 60.8


// In the above example, we have created an extension of the Temperature class.

/*
extension Temperature {

  // add a new method to Temperature class
  func convert() {
    var fahrenheit = (celsius * 1.8) + 32
    ...
  }
*/

/*
This extension adds the following features to Temperature:

-convert() - a method that simply converts the temperature 
from celsius to fahrenheit.
-fahrenheit - a variable declared inside convert() that 
stores the result of the conversion.
-We have then created an object named temp1 of Temperature, 
and used it to access the method created inside the extension.

// access extension method using class object
temp1.convert()

-Note: Properties defined inside the class (like celsius) 
can be used inside the extension too.
*/

//--------------------------------------------------------------------------

// Computed Property In Extension

// In Swift, we cannot add stored properties in extensions. For example:

/*
extension Circle {
  // stored property
  var radius: Int // error code
}
*/

//However, Swift lets us add computed properties to an extension. For example:

/*
extension Circle {

  // computed property
  var area: Double {
    ...
  }
}
*/

// Here, area is a computed property defined in the extension body.

//--------------------------------------------------------------------------

//Example: Computed Property In Extension

/*
class Circle {
  var radius: Double = 0
}

extension Circle {
  // define computed property 
  var area: Double {
    return 3.14 * radius * radius
  }
}

let circle1 = Circle()
circle1.radius = 5
print("Area:", circle1.area)
*/


//Output:
//Area: 78.5

/*
In the above example, we have created an extension of 
the Circle class, where we have defined a computed 
property named area.

This property calculates the area of the circle based 
on the value of radius.

//Computed Property
var area: Double {
  return 3.14 * radius * radius
}

*/

//--------------------------------------------------------------------------

// Protocol Extension

// In Swift, we can also extend the protocols. For example:

/*
// protocol definition
protocol Brake {
  func applyBrake()
}

// extend protocol
extension Brake {
  func applyBrake() {
    print("Brake Applied")
  }
}

// define class that conforms Brake
class Car: Brake {
  var speed: Int = 0
}

let car1 = Car()
car1.speed = 61
print("Speed:", car1.speed)

// access extended protocol
car1.applyBrake()
*/

//Output
//Speed: 61
//Brake Applied

/*
In the above example, we have created the protocol Brake 
that defines the function applyBrake().

We have extended the Brake protocol and defined the body
of the applyBrake() function inside it.

/ extend protocol
extension Brake {
  func applyBrake() {
    print("Brake Applied")
  }
}

Now, since the Car class conforms to the Brake protocol

class Car: Brake {
  ...
}

we can access the extended protocol using the car1 object.

// access extended protocol
car1.applyBrake()

*/

//--------------------------------------------------------------------------

/*
Functionality of an existing class, structure or enumeration type 
can be added with the help of extensions.

Type functionality can be added with extensions but overriding 
the functionality is not possible with extensions.
*/

/*
Existing type can also be added with extensions to make 
it as a protocol standard and its syntax is similar to 
that of classes or structures.

extension SomeType: SomeProtocol, AnotherProtocol {
// protocol requirements is described here
}

*/

//--------------------------------------------------------------------------

/*
Use "extension" keyword to add functionality to an existing type
(It can be pre-defined types or user-defined types), such as 
new methods and computed properties.

You can use an extension to add protocol that conformance to a type 
that’s declared elsewhere, 

Or you can use extension even to a type that you imported from a 
library or framework.
*/

/*

protocol ExampleProtocol {
    var simpleDescription: String { get }
    mutating func adjust()
}

//--------------------------------------

/*
Here, it extended "Int" type. 
The extension of type "Int" conforms ExampleProtocol,
it means that extension can implements the code 
of the definition that is defined in the "ExampleProtocol".
*/
extension Int: ExampleProtocol {
    /*
    Implemented the "simpleDescription" variable here as
    computed property that is defined in the "ExampleProtocol".

    The extension "Int" conforms the "ExampleProtocol" so the
    variable "simpleDescription" has been implemented as the
    computed property.
    */
    var simpleDescription: String {
        return "The number \(self)"
    }
    /*
    Implemented the code for mutating func defined in "ExampleProtocol".
    */
    mutating func adjust() {
        self += 42
    }
}
/*
Here, we called the computed variable "simpleDescription" using
dot notation with the object of class "Int" type. 
For class "Int" type, its object would be all Integer value.
So, the computed variable "simpleDescription" used "self"
value that is current instance value of type "Int". The
current instance called computed variable "simpleDescription" is
7. So, the "self" keyword would print the 7 in place of "self"
keyword.
*/
print(7.simpleDescription)
// Prints "The number 7"

*/

//--------------------------------------------------------------------------

//Write an extension for the Double type that adds an absoluteValue property.

/*
extension Double{
    var absoluteValue: Double
    {    
        if(self < 0)
        {
            return self * -1
        }
        return self
    }
}
var someValue = -8.8
print(someValue.absoluteValue)
*/

//Output:
//8.8

//--------------------------------------------------------------------------

/*
protocol ExampleProtocol {
    var simpleDescription: String { get }
    mutating func adjust()
}
*/

//-------------------
/*
To create a collection of objects(we can use class, struct)
that have different types but that all conform to a single 
protocol "ExampleProtocol".
*/

/*
class SimpleClass: ExampleProtocol {
    var simpleDescription: String = "A very simple class."
    var anotherProperty: Int = 69105
    func adjust() {
        simpleDescription += "  Now 100% adjusted."
    }
}
var obj1 = SimpleClass()
obj1.adjust()
*/

//------------------
/*
To create a collection of objects(we can use class, struct)
that have different types but that all conform to a single 
protocol "ExampleProtocol". 
*/

/*
struct SimpleStructure: ExampleProtocol {
    var simpleDescription: String = "A simple structure"
    mutating func adjust() {
        simpleDescription += " (adjusted)"
    }
}
var obj2 = SimpleStructure()
*/

//-----------------------

/*
-A named type is a type that can be given a particular name 
when it’s defined. Named types include classes, structures, 
enumerations, and protocols.

-We can use a protocol name "ExampleProtocol" just like any 
other named type.

-For example:
To create a collection of objects(we can use class, struct)
that have different types but that all conform to a single protocol. 

-When you work with values "someValue" whose type 
is a protocol type "ExampleProtocol", the methods 
that are not defined in the protocol scope aren't
available for values of type protocol. It would 
give error like:'ExampleProtocol' has no member 'anotherProperty'

Even though the variable someValue has a runtime type of 
SimpleClass, the compiler treats it as the given type of 
ExampleProtocol. This means that you can’t accidentally access 
methods or properties that the class implements in addition to 
its protocol conformance.

In simple words, as the compiler treats "someValue" as the given 
type of ExampleProtocol. Despite, the variable "someValue" has a 
runtime type of SimpleClass. So, you cannot access the methods or 
properties of class that are not defined in the protocol.
*/

/*
let someValue: ExampleProtocol = obj1 //"obj1" instance of class "SimpleClass"
// Prints "A very simple class.  Now 100% adjusted."
print(someValue.simpleDescription)
let someValue1: ExampleProtocol = obj2
print(someValue1.simpleDescription)  //prints "A simple structure"

print(someValue.anotherProperty) 
*/

/*
 error: value of type 'ExampleProtocol' has no member 'anotherProperty'
print(protocolValue.anotherProperty)  // Uncomment to see the error
      ~~~~~~~~~~~~~ ^~~~~~~~~~~~~~~
*/

//--------------------------------------------------------------------------

//---------------------****------------------------

/*
If different named types like class, struct has conforms from 
the same protocol. Then, you can access only those functions and 
variables that are defined in the protocol with the help of value
of type protocol name.

For example:

let variableName: ProtocolName = objectName

//"variable" of named type(class or struct) is also defined in the protocol
variableName.variable 

//"function()" of named type(class or struct) is also defined in the protocol.
variableName.function()  

//"xyzFunction()" of named type(class or struct) if not defined 
//in the protocol, then below statement would give error.
variableName.xyzFunction()  
*/

//---------------------****------------------------

/*
protocol ExampleProtocol {
    var simpleDescription: String { get }
    mutating func adjust()
}

//-----------------------------------

class SimpleClass: ExampleProtocol {
    var simpleDescription: String = "A very simple class."
    var anotherProperty: Int = 69105
    func adjust() {
        simpleDescription += "  Now 100% adjusted."
    }
}
var obj1 = SimpleClass()
obj1.adjust()

//-----------------------------------

struct SimpleStructure: ExampleProtocol {
    var simpleDescription: String = "A simple structure"
    mutating func adjust() {
        simpleDescription += " (adjusted)"
    }
}
var obj2 = SimpleStructure()

//-----------------------------------

let someValue: ExampleProtocol = obj1
print(someValue.simpleDescription)
let someValue1: ExampleProtocol = obj2
print(someValue1.simpleDescription)  
//print(someValue.anotherProperty) 
*/

//--------------------------------------------------------------------------