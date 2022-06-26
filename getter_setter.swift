// Swift Properties

/*

A Swift variable or constant defined inside a class or 
struct are called properties. For example:

class Person {

  // define properties 
  var name: String = ""
  var age: Int = 0 

  ... 
}

Here, inside the Person class we have defined two properties:

name - of String type with default value ""
age - of Int type with default value 0

*/

//--------------------------------------------------------------------------------

/*
Example 1: Swift Properties

class Person {

 // define two properties
 var name: String = ""
 var age: Int = 0
}

var person1 = Person()

// assign values to properties
person1.name = "Kevin"
person1.age = 42

// access properties
print("Name:", person1.name)
print("Age:", person1.age)

Output:

Name: Kevin
Age: 42

In the above example, we have created a class named Person with two properties: name and age.

Here, we have used the object person1 to access the properties:

person1.name - access the name property
person1.age - access the age property

Note: These properties we defined above are also called stored properties 
as they store actual values for each instance of the Person class.

*/

//--------------------------------------------------------------------------------

/*
Swift Computed Property

Earlier, we discussed about stored properties that store value 
for each instance. For example:

class Calculator {

  // define stored property
  var num1: Int = 0
  ... 
} 

Here, num1 is a stored property, which stores some value for an instance 
of Calculator.

However, there is another type of property called computed properties. 
Unlike stored property, a computed property calculates the value. For example:

class Calculator {
  ... 
   
  // define computed property
  var sum: Int {
    
    // calculate value
    num1 + num2
  }
}

Here, sum is a computed property that doesn't store a value, 
rather it computes the addition of two values.

Note: The curly braces {..} indicates the body of the computed property.

*/

//--------------------------------------------------------------------------------

/*

Example: Swift Computed Property

class Calculator {

  // define two stored properties
  var num1: Int = 0
  var num2: Int = 0

  // define one computed property
  var sum: Int {

    // calculate value
    num1 + num2
  }
}

var obj = Calculator()
obj.num1 = 11
obj.num2 = 12

// read value of computed property 
print("Sum:", obj.sum)

Output

Sum: 23

In the above example, we have

Stored properties: num1 and num2
Computed Property: sum.
Here, the computed property sum computes the addition of num1 and num2

var sum: Int {

  // calculate value
  num1 + num2
}

Now, we can access the computed value by accessing the computed property

print("Sum:", obj.sum)

*/

//--------------------------------------------------------------------------------

/*
Getters And Setters for Computed Properties.

/*
A getter in Swift allows access to a property, and 
a setter allows a property to be set.
*/

In Swift, we can also include a getter and setter inside a computed property.

getter - returns the computed value
setter - changes the value

Let's see an example:

class Calculator {
  var num1: Int = 0
  var num2: Int = 0

  // create computed property
  var sum: Int {

    // retrieve value
    get {
      num1 + num2
    }
  
    // set new value to num1 and num2
    set(modify) {
      num1 = (modify + 10)
      num2 = (modify + 20)
    }
  }
}

var obj = Calculator()
obj.num1 = 20
obj.num2 = 50

// get value
print("Get value:", obj.sum)

// provide value to modify
obj.sum = 5

print("New num1 value:", obj.num1)
print("New num2 value:", obj.num2)

Output:
Get value: 70
New num1 value: 15
New num2 value: 25

In the above example, we have created a computed property named sum. 
Inside the sum, we have:

1. Getter - to get the sum of num1 and num2

get {
  num1 + num2
}

2. Setter - to change value of num1 and num2

set(modify) {
  num1 = (modify + 10)
  num2 = (modify + 20)
}

Here, the setter has a new value named modify that can be used to set new values to num1 and num2.

Finally, we have used,

obj.sum - to access getter
obj.sum = 5 - to access setter

*/

//--------------------------------------------------------------------------------

//Swift Static Properties

/*
In the previous example, we have used objects of the class to access
its properties. However, we can also create properties that can be 
accessed and modified without creating objects.

These types of properties are called static properties. 
In Swift, we use the static keyword to create a static property. 
For example:

class University {

  // static property 
  static var name: String = ""
  ...  
}

Here, name is the static property. Now to access and modify
the value of a static property, we use the class name.

// modify value of the static property
University.name = "Kathmandu University"

*/

//--------------------------------------------------------------------------------

// Swift static Property Example

/*

class University {

 // static property
 static var name: String = ""

 // non-static property
 var founded: Int = 0
}

// create an object of University class
var obj = University()

// assign value to static property
University.name = "Kathmandu University"
print(University.name)

// assign value to non-static property
obj.founded = 1991
print(obj.founded)


Output:
Kathmandu University
1991


In the above example, we have a static property: name and 
a non-static property - founded Here:

University.name - access the static property using class name
obj.founded - access the non-static property using the object of the class
A static property is of the class type (associated with class rather than object), 
so we are able to access them using class names.

Note: Similarly, we can also create static properties inside a struct. 
static properties inside a struct are of a struct type, so we use the 
struct name to access them.

*/

//--------------------------------------------------------------------------------

//Automatically Generated Getters and Setters

/*

When an instance property is defined in Swift using var, 
a getter and setter is automatically generated:

class Notes {
var canSave = false
}

notes = Notes()
notes.canSave // Getter is available
notes.canSave = true // Setter is available



When an instance property is defined in Swift using let, 
only a getter is available:


class Store {
let canOrder = false
}

store = Store()
store.canOrder // Getter is available

// This will not compile and cause the error:
// “Cannot assign to property ‘canSave’
// is a ‘let’ constant”
store.canOrder = true

*/

//--------------------------------------------------------------------------------

/*

Getter available and setter unavailable

When an instance property is defined in Swift using var, 
a getter and setter is automatically generated.

If you want to implement an instance property using "var"
without an exposed(unprotected) setter then indicate a 
variable as private(set).

Exposed setter means unprotected setter. Any object can access exposed
setter from outside the class and make changes the instance property
defined as "var".

To avoid write access to instance property publically or outside of class
defined as "var". Make the exposed setter private by indicating a
variable as private(set).

Example:

class Store {
private(set) var canOrder = false
}

// Create a store instance
store = Store()
store.canOrder // Getter is available

// This will not compile and cause the error:
// “Cannot assign to property: ‘canOrder’
// setter is inaccessible”
store.canOrder = true

*/

//--------------------------------------------------------------------------------

/*
A variable property without exposed setter using only "get" getter by making
variable property "private".
*/

/*

If we want to only provide read access to private instance property 
defined as "var". We can use "get" to expose a getter or to make a
getter unprotected or accessible for a private instance variable.

If we declare instance variable as "private" then both setter and 
getter in unaccessible.

*/
 
/* Define "private" instance variable

class Store{
    private var canOrder = false
}

var store = Store()
print(store.canOrder)

*/

//Output:

//error: 'canOrder' is inaccessible due to 'private' protection level
//print(store.canOrder)
//            ^~~~~~~~


/* Instance variable without private keyword is accessible.

class Store{
    var canOrder = false
}

var store = Store()
print(store.canOrder)
*/

// Output:
//false

//--------------------------------------------------------------------------------

// To access a value of private instance variable using exposed getter.

/*


class Store {

// Here, setter and getter both are inaccessible due to "private" keyword.

private var _canOrder = false

/*
Here, we declared another variable named "canOrder" of same type as 
private instance variable named "_canOrder" and exposed getter to 
make a value of private instance variable accessible.
*/

var canOrder: Bool {
get { return _canOrder }
}
}

// Create a store instance
var store = Store()
print(store.canOrder) // Getter is available

// This will not compile and cause the error:
// “Cannot assign to property: ‘canOrder’
// is a get-only property”
store.canOrder = true

*/

//--------------------------------------------------------------------------------

// get throws (new in Swift 5.5)

/*
Starting in Swift 5.5, throws is available for getters defined with get:

class Notes {

func isDatabaseAvailable() throws -> Bool {
/* … */
}

var canSave: Bool {
get throws {
return try isDatabaseAvailable()
}
}
}

notes = Notes()

do {
if try notes.canSave {
// Handle logic
}
}
catch {
// Handle error
}

*/

//--------------------------------------------------------------------------------

// "set" Setter

/*
The set keyword can be used to implement an explicit setter in Swift. 
Often set is used to expose a setter for a private property and apply 
additional logic:

class Notes {
func isDatabaseAvailable() -> Bool {
/* … */
}

private var _canSave = false

var canSave: Bool {

get { return _canSave }

set {

if isDatabaseAvailable() {
_canSave = newValue
} // if body end

} // setter body end
} // body end of var "canSave"
} // class end

*/

//--------------------------------------------------------------------------------

// Define "willSet"

/*
If explicit getters and setters using get and set are not defined, 
willSet can be used to take action before a new value is set for a property.
*/

/*
class Notes {

    // _canSave is parameter name.
    func storePreviousSaveValue(_canSave: Bool) {
        print(_canSave)
    }
    // canSave is an Instance Variable.
    var canSave = false 
    {
        willSet {
    /*
    Inside of willSet, the property
    canSave will be the old value,
    before a new one is set.

    If you want to perform some task with the old value
    of a property, then you can use "willSet" and later
    you can assign the new value.
    */

        // Here, "_canSave" is the label name and "canSave" is argument.
        storePreviousSaveValue(_canSave: canSave)
        }
    }
}

// Creates an instance of notes with
// notes.canSave initialized to false
var notes = Notes()

// willSet will be called while notes.canSave is
// false, so storePreviousSaveValue is called
// with false, then notes.canSave is set to true
notes.canSave = true
print("value after willSet: ", notes.canSave)
*/

//Output:
//false
//value after willSet:  true

//--------------------------------------------------------------------------------

// didSet

/*
If explicit getters and setters using get and set are not defined, 
didSet can be used to take action after a new value is set for a property.
*/

/*
class Notes {

    // _canSave is parameter name.
    func storePreviousSaveValue(_canSave: Bool) {
        print(_canSave)
    }
    // canSave is an Instance Variable.
    var canSave = false 
    {
        didSet {
    /*
    Inside of didSet, the statements would be executed
    after setting new value in the instance variable.

    If you want to perform some task with the new value
    of a property, then you can use "didSet".
    */

        // Here, "_canSave" is the label name and "canSave" is argument.
        storePreviousSaveValue(_canSave: canSave)
        }
    }
}

// Creates an instance of notes.
var notes = Notes()

/*
The "canSave" instance variable would be called and
a new value would be set to "true" then the body of 
didSet will be executed.
*/
notes.canSave = true
*/

//Output:
//true

//--------------------------------------------------------------------------------

// ‘didSet’ cannot be provided together with a getter

/*
If only didSet and get are implemented, didSet will never be 
called because a get-only property cannot be set.

var canSave: Bool {
// This causes the compiler error:
// “‘didSet’ cannot be provided
// together with a getter”
get { /* … */ }
didSet { /* … */ }
}

*/

//--------------------------------------------------------------------------------

// ‘willSet’ cannot be provided together with a getter

/*

If only willSet and get are implemented, willSet will never be called 
because a get-only property cannot be set:

var canSave: Bool {
// This causes a compiler error:
// “‘willSet’ cannot be provided
// together with a getter”
get { /* … */ }
willSet { /* … */ }
}

*/

//--------------------------------------------------------------------------------

// ‘didSet’ cannot be provided together with a setter

/*

If only didSet and set are implemented, didSet should instead be implemented inside of the set setter:

var canSave: Bool {
// This causes a compiler error:
// “‘didSet’ cannot be provided
// together with a setter”
set { /* … */ }
didSet { /* … */ }
}

// This is a better alternative:
var canSave: Bool {
set {
canSave = newValue

// Add code for didSet here,
// after a new value is set
}
}

*/

//--------------------------------------------------------------------------------

// ‘willSet’ cannot be provided together with a setter

/*

If only willSet and set are implemented, willSet should instead be implemented inside of the set setter:

var canSave: Bool {
// This causes a compiler error:
// “‘willSet’ cannot be provided
// together with a setter”
set { /* … */ }
willSet { /* … */ }
}

// This is a better alternative:
var canSave: Bool {
set {
// Add code for willSet here,
// before a new value is set

canSave = newValue
}
}

*/

//--------------------------------------------------------------------------------

/*
Accessor: A member that provides mechanisms to read, write or compute 
the value of a private field. Properties can be accessed through 
special methods called accessors.

Getter: Retrieves an instance value

Setter: Sets an instance value
*/

// Using "return" keyword in getter.
/*
class Temperature {
    var celsius: Float = 0.0
    var fahrenheit: Float {
        get {
            return ((celsius * 1.8) + 32.0)
        }
        set {
            celsius = (newValue - 32)/1.8
        }
    }
}


let temp = Temperature()
temp.fahrenheit = 99
print (temp.celsius)
*/

//--------------------------------------------------------------------------------

// We actually don’t need the return keyword for the getter.
// The newValue

/*
class Temperature {
    var celsius: Float = 0.0
    var fahrenheit: Float {
        get {
            ((celsius * 1.8) + 32.0)
        }
        set {
            celsius = (newValue - 32)/1.8
        }
    }
}


let temp = Temperature()
temp.fahrenheit = 99
print (temp.celsius)
*/

//--------------------------------------------------------------------------------

/*
Since in the examples above the setter (that is, the thing defined by set) 
does not provide a name for the new value to be set the default name newValue. 
There is an alternative version below where the name temp has been used instead:

class Temperature {
    var celsius: Float = 0.0
    var fahrenheit: Float {
        get {
            ((celsius * 1.8) + 32.0)
        }
        set(temp) {
            celsius = (temp - 32)/1.8
        }
    }
}


let temp = Temperature()
temp.fahrenheit = 99
print (temp.celsius)

*/

//--------------------------------------------------------------------------------

/*

In Swift, the getter and setter are applied to computed properties 
that do not have access to their own storage.

In addition to simple properties that are stored, 
properties can have a getter and a setter.

*/

// Getter and Setter

// Properties can have a getter and a setter.
// A getter in Swift allows access to a property, 
// and a setter allows a property to be set. 

// Superclass

/*
class NamedShape {
    var numberOfSides: Int = 0
    var name: String

    init(name: String) {
        self.name = name
    }

    func simpleDescription() -> String {
        return "A shape with \(numberOfSides) sides."
    }
}
*/

//------------------------------------------------------------------------------

// Subclass

/*
class EquilateralTriangle: NamedShape {
    var sideLength: Double = 0.0

/*
The initializer for the EquilateralTriangle class has three different steps:
*/
    init(sideLength: Double, name: String) {
        //Setting the value of properties that the subclass declares.
        self.sideLength = sideLength
        //Calling the superclass’s initializer.
        super.init(name: name)
        //Assigned or initialise value to the variable of superclass.
        /*
        Changing the value of properties defined by the superclass. 
        Any additional setup work that uses methods, getters, or setters 
        can also be done at this point.
        */
        numberOfSides = 3
    }

    var perimeter: Double {
        get {
            return 3.0 * sideLength
        }
        /*In the setter for perimeter, the new value assigned at the time 
          of calling instance variable (triangle.perimeter = 9.9) get 
          transferred to the setter and new value has the implicit name newValue. 
          You can provide an explicit name in parentheses after set.
          For example: set(temp) 
        */
        set {
            sideLength = newValue / 3.0
        }
    }

    override func simpleDescription() -> String {
        return "An equilateral triangle with sides of length \(sideLength)."
    }
}
var triangle = EquilateralTriangle(sideLength: 3.1, name: "a triangle")
print(triangle.perimeter)
// Prints "9.3"
triangle.perimeter = 9.9
print(triangle.sideLength)
// Prints "3.3000000000000003"
*/

//------------------------------------------------------------------------------

// willSet and didSet

/*
If you don’t need to compute the property but still need to provide code
that’s run before and after setting a new value, use willSet and didSet. 

willSet - Set value after executing the codes in willSet body.
didSet - Set the value before executing the codes in the didSet body.
*/

// Superclass

class NamedShape {
    var numberOfSides: Int = 0
    var name: String

    init(name: String) {
        self.name = name
    }
}


// Subclass

class EquilateralTriangle: NamedShape {

    var sideLength: Double = 0.0

    init(sideLength: Double, name: String) {
        //Setting the value of properties that the subclass declares.
        self.sideLength = sideLength
        //Calling the superclass’s initializer.
        super.init(name: name)
    }
}


// Subclass

class Square: NamedShape {

    var sideLength: Double = 0.0

    init(sideLength: Double, name: String) {
        //Setting the value of properties that the subclass declares.
        self.sideLength = sideLength
        //Calling the superclass’s initializer.
        super.init(name: name)
    }
}


// New Class

class TriangleAndSquare {

    // Declare an instance variable of type "EquilateralTriangle" class.
    var triangle: EquilateralTriangle {
        willSet {
            /*
            When the "triangle" instance variable will be called of
            class "TriangleAndSquare", then the code of "willSet" will
            be executed after that the value would be assigned to
            "triangle" instance variable of class "TriangleAndSquare".
            */
            square.sideLength = newValue.sideLength
        }
    }
    var square: Square {
        willSet {
            triangle.sideLength = newValue.sideLength
        }
    }
    /*
    Initialiser received value "10" for size and value "another test shape"
    for name parameter.
    */
    init(size: Double, name: String) {
        square = Square(sideLength: size, name: name)
        triangle = EquilateralTriangle(sideLength: size, name: name)
    }
}
/*
Created an instance of class "TriangleAndSquare" and pass the arguments to
the initialiser of class "TriangleAndSquare".

The value 10 is assigned to "sidelength" and value "another test shape"
is assigned to "name" for both objects (square and triangle) of class "Square" and
"EquilateralTriangle" respectively.
*/
var triangleAndSquare = TriangleAndSquare(size: 10, name: "another test shape")
/*
"triangleAndSquare" object of class "TriangleAndSquare" calls "square"
object of class "Square" and "square" object calls the getter of
"sideLength" instance variable of object "square" of class "Square".

In the initialiser of class "TriangleAndSquare", the value assigned to
"sideLength" instance variable for "square" is 10 so it will print "10.0"
as the type of "sideLength" is declared as "Double" in class "Square".
*/
print(triangleAndSquare.square.sideLength)
// Prints "10.0"
print(triangleAndSquare.triangle.sideLength)
// Prints "10.0"

/*

Square(sideLength: 50, name: "larger square") :

Here, object of class "Square" is created and assigned value "50" to the
"sideLength" instance variable and value "larger square" to the "name"
instance variable of object of class Square.

triangleAndSquare.square = :

This code will call the setter of "square" instance variable of object
"triangleAndSquare" of class "TriangleAndSquare".
"square" instance variable has "willSet" so first the code of "willSet"
would be executed then the value would be assigned to the below part of code:
triangleAndSquare.square =

The newValue in the "willSet" of "square" instance variable will get the value
as object of class "Square". And, that object would have value "50" for 
"sideLength" and "larger square" for "name" instance variable for object
of class "Square".

In the body of "willSet", this line of code:
triangle.sideLength = newValue.sideLength

will take the "sideLength" value that is "50" from the object that is 
assigned to "newValue" and that value "50" would be assigned to "sideLength"
instance variable for object "triangle" of class "EquilateralTriangle".

Once the body of "willSet" is executed, now the object of class "Square" 
with value "50" for "sideLength" and value "larger square" for "name"
would be referenced to the "square" instance variable of Type "Square" class.

Now, the "square" object reference variable will have sideLength: 50, 
name: "larger square"
*/

triangleAndSquare.square = Square(sideLength: 50, name: "larger square")

/*
In the body of "willSet", this line of code:
triangle.sideLength = newValue.sideLength

will take the "sideLength" value that is "50" from the object that is 
assigned to "newValue" and that value "50" would be assigned to "sideLength"
instance variable for object "triangle" of class "EquilateralTriangle".
*/
print(triangleAndSquare.triangle.sideLength)
// Prints "50.0"
print(triangleAndSquare.square.sideLength)
// Prints "50.0"
print(triangleAndSquare.square.name)
// Prints "larger square"

/*
The below line would access the getter of "name" instance variable
for object "triangle".

As we have not changed the value of "name" instane variable for object
"triangle" after the initialisation in initialiser of class "TriangleAndSquare"
so its value would remain same that is "another test shape".
*/

print(triangleAndSquare.triangle.name)
// Prints "another test shape"

//------------------------------------------------------------------------------