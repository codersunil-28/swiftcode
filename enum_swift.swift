// Enumeration

/*
In Swift, an enum (short for enumeration) is a user-defined data type 
that has a fixed set of related values.
*/

// We use the "enum" keyword to create an enum. For example:

/*
enum Season {
  case spring, summer, autumn, winter
}
*/

/*
Here:
Season - name of the enum
spring/summer/autumn/winter - values defined inside the enum

Note: Enum values are also called enum cases. And, we use the 
case keyword to declare values inside the enum.
*/

//--------------------------------------------------------------------------------

// Create enum variables

/*
Since enum is a data-type, we can create variables of enum type. For example:

var currentSeason: Season

Here, currentSeason is a Season type variable. It can only store 
values (spring, summer, autumn, winter) present inside the enum.
*/

//--------------------------------------------------------------------------------

// Assign values to enum variables

/*
We use the enum name and the . notation to assign values to an 
enum variable. For example:

// assign summer to currentSeason variable
var currentSeason = Season.summer

Here, we have assigned the member value "summer" (enum value) to 
the enum variable currentSeason. The "Season" is an enum name.
*/

//--------------------------------------------------------------------------------

// Example: Swift Enumeration

/*
// define enum 
enum Season {
  
  // define enum values
  case spring, summer, autumn, winter
}

// create enum variable
var currentSeason: Season

// assign value to enum variable
currentSeason = Season.summer

print("Current Season:", currentSeason)
*/

//Output:
//Current Season: summer


/*
In the above example:

Season - an enum name with 4 values: spring, summer, autumn, winter 
defined using "case" keyword within "enum" body.
currentSeason - enum type variable
currentSeason = Season.summer - assigns enum value to currentSeason 
enum variable.
*/

//--------------------------------------------------------------------------------

/*
Note: Similar to variables, we can also create enum variables 
and assign value in a single line. For example:
*/


/*
enum Season {
  case spring, summer, autumn, winter
}

// "lastSeason" is an enum variable 

var lastSeason = Season.spring

print("Last Season:", lastSeason)
*/

//Output:
//Last Season: spring

//--------------------------------------------------------------------------------

// Swift enum With Switch Statement

// We can also use an enum with a switch statement in Swift. For example:

/*
enum PizzaSize {
  case small, medium, large
}

var size = PizzaSize.medium

switch(size) {
  case .small:
    print("I ordered a small size pizza.")

  case .medium:
    print("I ordered a medium size pizza.")

   case .large:
     print("I ordered a large size pizza.");
}
*/

//Output:
//I ordered a medium size pizza. 


/*
In the above example, we have created an enum named PizzaSize 
with values: small, medium, large. Notice the statement,

var size = PizzaSize.medium

Here, we are assigning the value medium to the enum variable size.
We have used the enum variable size inside the switch statement. 
And, the value is compared with the value of each case statement.

Since the value matches with case .medium, the statement inside 
the case is executed.
*/

//--------------------------------------------------------------------------------

// Iterate Over enum Cases

// In Swift, we use the CaseIterable protocol to iterate over an enum. For example:

/*
enum Season: CaseIterable {
  ...
}
*/

// Now we can use the "allCases" property to loop through each case of an enum.

/*
for currentSeason in Season.allCases {
   ...
}

Here, the "currentSeason" is the variable, "Season" is the enum name
and "allCases" is the property to loop through each case of an enum.
*/

//--------------------------------------------------------------------------------

// Example: Iterate Over enum Cases using CaseIterable

/*
enum Season: CaseIterable {
  case spring, summer, autumn, winter 
}

// for loop to iterate over all cases
for currentSeason in Season.allCases {
  print(currentSeason)
}
*/

//Output:
//spring
//summer
//autumn
//winter

/*
In the above example, we have conformed (abide by) the CaseIterable protocol with 
the enum Season.

We then use the allCases property with the for loop to iterate over each 
case of the enum.
*/

//--------------------------------------------------------------------------------

// Swift enums with rawValue

// In Swift, we can also assign values to each enum case. For example:

/* "Int" type of raw values.
enum Size : Int {
  // enum case; value 10 is raw value.
  case small = 10
  // enum case; value 12 is raw value.
  case medium = 12
  ...
}
*/

/*
Here, we have assigned values 10 and 12 to enum cases small and medium 
respectively. These values are called raw values.

Note that we have used Int with enum name to define that 
enum cases can only include integer raw values.
*/

/*
Access enum raw values

To access the raw value of an enum, we use the rawValue property. For example:

// access raw value 
// "Size" is enum name, "small" case or enum value and "rawValue"
// property is used to access raw value.

Size.small.rawValue

Here, we have accessed the value of the small case.
*/

//--------------------------------------------------------------------------------

// Example: enums With Raw Values

/*
enum Size : Int {
  case small = 10
  case medium = 12
  case large = 14
}

// access raw value of small case
var result = Size.small.rawValue
print(result)
*/

//Output:
//10

/*
In the above example, we have created the enum named Size which has 
a raw value of Int type.

Here, we have accessed the value of the small case using the 
rawValue property.

Note: Raw values can be of strings, characters, integers, or 
floating-point number types.
*/

//--------------------------------------------------------------------------------

// Swift enum Associated Values

/*
In Swift, we can also attach additional information to an enum case. For example:
*/

/*
enum Laptop {
  
  case name(String)
  ...
}
*/

/*
Here, for the name case, we can attach a String type value.
Now, we can assign the associated value to the case.

Laptop.name("Razer")

Here, "Razer" is the associated value of the name case.

*/

//--------------------------------------------------------------------------------

// Example: enum Associated Values

/*
enum Laptop {

  // associate string value
  case name(String)

  // associate integer value  
  case price (Int)
}

// pass string value to name
var brand = Laptop.name("Razer")
print(brand)

// pass integer value to price
var offer = Laptop.price(1599)
print(offer)
*/

//Output:
//name("Razer")
//price(1599)

/*
In the above example, the associated value

Razer is assigned to the name case.
1599 is assigned to the price case.
*/

//--------------------------------------------------------------------------------

// Swift enum With Associated Values

// The additional information attached to enum values are called associated values.

/*
enum Distance {
  // "km" enum value
  case km(String)
  ...
}
*/

/*
Here, (String) is additional information attached to the value km. 
It represents that the value of km can only be a String.

Now, here's how we assign the associated value to the enum value.

Distance.km("Metric System")

Here, "Metric System" is the value associated with the km value.
*/

//--------------------------------------------------------------------------------

// Example: Swift enum with Associated Values

/*
enum Distance {
  
  /*
  "km" and "miles" are enum values and String is the
  additional information specifies that enum values would
  take associated value of String type.
  */
  case km(String)
  case miles(String)
}

// pass string value to km
var dist1 = Distance.km("Metric System")
print(dist1)

// pass string value to miles
var dist2 = Distance.miles("Imperial System")
print(dist2)
*/

//Output:
//km("Metric System")
//miles("Imperial System")

/*
In the above example, we have created an enum named Distance 
with the following associated values:

"Metric System" is assigned to the km value.
"Imperial System" is assigned to the miles value.
*/

//--------------------------------------------------------------------------------

// Associate Multiple Values

/*
In Swift, we can also associate multiple values to a single enum value. 
For example:
*/

/*
enum Marks {

 // associate multiple Double values
case gpa(Double, Double, Double)

// associate multiple String values
case grade(String, String, String)
}

// pass three Double values to gpa
var marks1 = Marks.gpa(3.6, 2.9, 3.8)
print(marks1)

// pass three string values to grade
var marks2 = Marks.grade("A", "B", "C")
print(marks2)
*/

//Output:
//gpa(3.6, 2.9, 3.8)
//grade("A", "B", "C")


/*
Here, we have created an enum with two values: gpa and grade. 
Notice the enum values:

// associate multiple Double values
case gpa(Double, Double, Double)

// associate multiple String values
case grade(String, String, String)

This indicates that we have to associate three Double and String 
values to gpa and grade respectively. These associated values are 
also called tuples.

So, we have attached 3.6, 2.9, 3.8 to gpa.

// pass three integer values to gpa
var marks1 = Marks.gpa(3.5, 2.9, 3.8)

And, we have attached "A", "B", "C" to grade.

/ pass three string values to grade
var marks2 = Marks.grade("A", "B", "C")
*/

//--------------------------------------------------------------------------------

// Named Associated Values

/*
In Swift, we can also provide a name to the associated value to 
make our code more readable. For example:

enum Pizza {

  case small(inches: Int)
}

Here, we have provided the name "inches" to the associated value.
It makes more sense while reading the named associated value instead of

case small(Int)
*/


// Example: Named Associated Values

/*
enum Pizza {

  // named associated value
  case small (inches: Int)
  case medium (inches: Int)
  case large (inches: Int)
}

// pass value using provided names
var pizza1 = Pizza.medium(inches: 12)
print(pizza1)
*/

//Output:
//medium(inches: 12)

/*
In the above example, we have provided the name inches to the associated value.

While passing associated value to the case, we have used the provided name,

Pizza.medium(inches: 12)
*/

//--------------------------------------------------------------------------------

// enum Associated Values and Switch Statement

//We can use a Swift switch Statement to match enum associated values. For example:

/*
enum Mercedes {

 case sedan(height: Double)
 case suv(height: Double)
 case roadster(height: Double)
}

var choice = Mercedes.suv(height: 5.4)

switch(choice) {
 case let .sedan(height):
   print("Height:", height)

 // Here, let binds the associated value to the height variable, 
 // which we can use in the body of the case.
 case let .suv(height):
   print("Height:", height)

 case let .roadster(height):
   print("Height:", height)
}
*/

//Output:
//Height: 5.4

/*
In the above example, we have used a switch statement to match 
the enum associated values. Notice the statement:

var choice = Mercedes.suv(height: 5.4)

Here, we have attached 5.4 to suv and assigned it to the enum variable choice.

Then, we have used choice inside the switch statement to compare the enum case 
with the value of each case statement. Notice the switch case statement:

case let .suv(height):

Here, let binds the associated value to the height variable, 
which we can use in the body of the case.

Since the value matches with case let .suv, the statement inside 
the case is executed.
*/

//--------------------------------------------------------------------------------

// Raw Values VS Associated Values

/*
In Swift, raw values are predefined constant values provided 
to each enum value. For example:

enum Vehicle: String {

  case car = "Four Wheeler"
  case bike = "Two Wheeler"
}

Here, we have provided the raw values: "Four Wheeler" and "Two Wheeler" 
to car and bike respectively.
*/


/*
However, associated values are more like variables associated 
with the enum values. For example:

enum Marks {
  
  case grade(String)
  case gpa(Double)
}

Here, grade and gpa have an associated value of String and 
Double type respectively.

And we assign the associated value to the enum value while creating a variable.

var marks = Marks.grade("A")

Notes:

An enum cannot have both raw values and associated 
values at the same time.

The raw values of an enum must be of the same data type. 
But associated values can be of any type.
*/

//--------------------------------------------------------------------------------

/*
-Use enum to create an enumeration.
-You can also use strings or floating-point numbers 
as the raw type of an enumeration.
*/

/*
enum Rank: Int 
{
  /*
  By default, Swift assigns the raw values starting at zero and 
  incrementing by one each time, but you can change this behavior 
  by explicitly specifying values. In the example below, Ace is 
  explicitly given a raw value of 1, and the rest of the raw values 
  are assigned in order. 
  */

  // "ace" is enum value and "1" is raw value.
  case ace = 1
  case two, three, four, five, six, seven, eight, nine, ten
  case jack, queen, king
  /*
  -Like classes and all other named types, enumerations can have methods 
  associated with them.
  -The method simpleDescription() accesses self to determine the current 
  enumeration case.
  */
  func simpleDescription() -> String 
  {
    
    /*
    To find what case holds the enumeration within its method, 
    you can easily query self property with a switch statement.
    */

    switch self 
    {
      case .ace:
        return "ace matched"
      case .jack:
        return "jack matched"
      case .queen:
        return "queen matched"
      case .king:
        return "king matched"
      default:
        return String(self.rawValue)
    }
  }
}
// value of "someValue" enum variable: queen
let someValue = Rank.queen
print(someValue.simpleDescription())
// Use the rawValue property to access the raw value of an enumeration case.
// value of queenRawValue variable: 12
let queenRawValue = someValue.rawValue
*/

//Output:
//queen matched

//--------------------------------------------------------------------------------

/*
enum Rank: Int 
{
  case ace = 1
  case two, three, four, five, six, seven, eight, nine, ten
  case jack, queen, king
  
  func simpleDescription() -> String 
  {
    switch self 
    {
      case .ace:
        return "ace matched"
      case .jack:
        return "jack matched"
      case .queen:
        return "queen matched"
      case .king:
        return "king matched"
      default:
        return String(self.rawValue)
    }
  }
}
let someValue = Rank.eight
print(someValue.simpleDescription())
let queenRawValue = someValue.rawValue
*/

//Output:
//8

//--------------------------------------------------------------------------------

/*
enum Rank: Int
{
  case first = 13
  case second = 24

  func compareRank() -> String
  {
    switch self
    {
      case .first:
      return "Raw value of enum case first: \(self.rawValue)"
      case .second:
      return "Raw value of enum case Second: \(self.rawValue)"

    }

  }
}

let someValue = Rank.second
print(someValue.compareRank())
*/

//Output:
//Raw value of enum case Second: 24

//--------------------------------------------------------------------------------

/*
enum Rank: Int {
    case ace = 1
    case two, three, four, five, six, seven, eight, nine, ten
    case jack, queen, king

    /*
    -Use the init?(rawValue:) initializer to make an instance of an 
    enumeration from a raw value.

    -It returns either the enumeration case matching the raw value 
    or nil if there’s no matching Rank.

    -Failable initializer: In some cases initializers might or might 
    not work, this is called a failable initializer. We write a failable 
    initializer by placing a question mark (?) after the init keyword 
    and return nil if something goes wrong.
    */
    init?(rawValue: Int){
      // check rawValue is empty
      if rawValue == 3 {
        /*
        "self" keyword represents the object of Rank of type enum 
        which hold current value of enum Rank.
        */
        self = .three
      } else {
        return nil
      }
    }

    func simpleDescription() -> String {
        switch self {
        case .ace:
            return "ace"
        case .jack:
            return "jack"
        case .queen:
            return "queen"
        case .king:
            return "king"
        default:
            return String(self.rawValue)
        }
    }

}

// "convertedRank" has current enum value of type "Rank"
if let convertedRank = Rank(rawValue: 3) {
 
  let threeDescription = convertedRank.simpleDescription()
  print(threeDescription)
}
*/

//Output:
//3

//--------------------------------------------------------------------------------

// Write a function that compares two Rank values by comparing their raw values.

// "enum" is a keyword, "Rank" is an enum type, "Int" is type of rawValue.

/*
enum Rank: Int 
{
  //case values are constant values.
  case ace = 1
  case two, three, four, five, six, seven, eight, nine, ten
  case jack, queen, king
}

let num1 = Rank.jack
let num2 = Rank.seven
if(num1.rawValue > num2.rawValue){
    print("\(num1) is greater than \(num2)")
}
*/

//Output: 
//jack is greater than seven

//--------------------------------------------------------------------------------

/*
The case values of an enumeration are actual values, not just 
another way of writing their raw values. In fact, in cases where 
there isn’t a meaningful raw value, you don’t have to provide one.
*/

/*
enum Suit {
    case spades, hearts, diamonds, clubs

    func simpleDescription() -> String {
        switch self {
        case .spades:
            return "spades"
        /*    
        Inside the switch, the enumeration case is 
        referred to by the abbreviated form .hearts 
        because the value of self is already known to 
        be a suit. You can use the abbreviated form 
        anytime the value’s type is already known.
        */    
        case .hearts:
            return "hearts"
        case .diamonds:
            return "diamonds"
        case .clubs:
            return "clubs"
        }
    }
}

/*
When assigning a value to the hearts 
constant, the enumeration case Suit.hearts is referred to by 
its full name because the constant doesn’t have an explicit 
type specified.
*/
let hearts = Suit.hearts
let heartsDescription = hearts.simpleDescription()
*/

//--------------------------------------------------------------------------------


/* 
Add a color() method to Suit that returns “black” for spades 
and clubs, and returns “red” for hearts and diamonds.
*/

/*
enum Suit {
    case spades, hearts, diamonds, clubs

    func color() -> String{
      switch self{
        case .spades, .clubs:
        return "black"
        case .hearts, .diamonds:
        return "red"
      }

    }
}
let someValue = Suit.clubs
let colorDescription = someValue.color()
print(colorDescription)
*/

//Output:
//black

//--------------------------------------------------------------------------------

/*
If an enumeration has raw values, those values are determined as part 
of the declaration, which means every instance of a particular 
enumeration case always has the same raw value. 

Example:

enum Color: String{
  case red = "23"
  case blue = "cd"
}

let num1 = Color.red.rawValue
let num2 = Color.red.rawValue

print(num1, num2)

// Output:
//23 23
*/

//--------------------------------------------------------------------------------

/*
enum ServerResponse 
{
    /*
    Another choice for enumeration cases is to have values 
    associated with the case.
    */  
    case result(String, String)
    case failure(String)
}
/*
-These enum case values are determined when you make the instance, 
and they can be different for each instance of an enumeration case. 

-You can think of the associated values as behaving like stored 
properties of the enumeration case instance.
*/

// Here, the value of instance "india" is : result("6:00 am", "8:09 pm"
let india = ServerResponse.result("6:00 am", "8:09 pm")
let nepal = ServerResponse.result("9:00 am", "6:00 pm")
let failure = ServerResponse.failure("Out of cheese.")


/*
-Consider the case of requesting the sunrise and sunset times from a server.
-The server either responds with the requested information, or it responds 
with a description of what went wrong.
-The sunrise and sunset times are extracted from the ServerResponse value
that is values are extracted from a enum case by matching the instance
of the enum case with the cases of switch. 
-ServerResponse value that is the enum case "result" whose one of the 
instance "nepal" is part of matching the value of "nepal" instance
against the switch cases.
-If the enum case of particular instance gets matched, then the value
of that particular instance is extracted and assigned to the names
in the case respectively. And, the line of codes of that particular
case is executed.
*/

switch nepal {
case let .result(sunrise, sunset):
    print("Sunrise is at \(sunrise) and sunset is at \(sunset).")
case let .failure(message):
    print("Failure...  \(message)")
}
*/

//Output:
//Sunrise is at 9:00 am and sunset is at 6:00 pm.


//--------------------------------------------------------------------------------

// Add a third case to ServerResponse and to the switch.

/*
enum ServerResponse {
    case result(String, String)
    case failure(String)
    case waiting(String)
}

let success = ServerResponse.result("6:00 am", "8:09 pm")
let failure = ServerResponse.failure("Out of cheese.")
let loading = ServerResponse.waiting("Page is loading")

switch loading {
case let .result(sunrise, sunset):
    print("Sunrise is at \(sunrise) and sunset is at \(sunset).")
case let .failure(message):
    print("Failure...  \(message)")
case let .waiting(hold):
    print("Please wait \(hold)")
}
*/

//Output:
//Please wait Page is loading

//--------------------------------------------------------------------------------