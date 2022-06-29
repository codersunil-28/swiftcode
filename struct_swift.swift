// Swift Structs

/*
In Swift, a struct is used to store variables of different data types.

For example:

Suppose we want to store the name and age of a person.
We can create two variables: name and age and store value.

However, suppose we want to store the same information of multiple people.

In this case, creating variables for an individual person might 
be a tedious task.
To overcome this we can create a struct that stores name and age.
Now, this struct can be used for every person.
*/

//-----------------------------------------------------------------------------

// Define Swift Structure

// Here's the syntax to define struct in Swift:

/*
struct StructureName {
  // structure definition 
}
*/

/*
Here:

struct - keyword used to define a structure
StructName - the name of the structure
*/

// Let's see an example,

/*
struct Person {

  // Note: The variables and constants inside a struct are called properties.

  var name = ""
  var age = 0
}
*/

/*
Here, we have defined a struct named Person. 
Inside the curly braces {}, the struct contains 
two variables name and age with 
values "" and 0 respectively.
*/

//-----------------------------------------------------------------------------

// Struct Instances

/*
A struct definition is just a blueprint. To use a struct, 
we need to create an instance of it. For example:
*/

/*
struct Person {

  var name = " "
  var age = 0
}

// create instance of struct
var person1 = Person()
*/

/*
Here, we have created an instance by writing the name 
of the structure Person followed by a default initializer ()

Now, we can use the person1 instance to access and modify 
the struct properties. For example:

modify the name property

person1.name = "Swift"

access the age property

person1.age

Here, we have used the dot notation . to access struct properties.
*/

//-----------------------------------------------------------------------------

// Example: Swift Access Struct Properties

/*
// define a structure 
struct Person {

// define two properties
 var name = ""
 var age = 0
}

// create instance of Person
var person1 = Person()

// access properties and assign new values
person1.age = 21
person1.name = "Rick"

print("Name: \(person1.name) and Age: \( person1.age) ")
*/

//Output

// Name: Rick and Age: 21

/*
In the above example, we have defined the struct named Person 
with two properties: name and age.

We have also created an instance person1 of the struct Person.

Finally, we have accessed and modified the properties of an 
instance using . notation.
*/

//-----------------------------------------------------------------------------

// Example: Create Multiple Instances of Struct

/*
// define a structure
struct Student {

// define a property
var studentID = 0
}

// instance of Person
var student1 = Student()

// access properties and assign new values
student1.studentID = 101

print("Student ID: \(student1.studentID)")

// another instance of Person
var student2 = Student()

// access properties and assign new values
student2.studentID = 102

print("Student ID: \(student2.studentID)")
*/

// Output
//Student ID: 101
//Student ID: 102

/*
In the above example, we have created two instances 
student1 and student2 of the Student struct

Note: We can create as many instances of the structure as we want.
*/

//-----------------------------------------------------------------------------

// Swift Memberwise Initializer

// Earlier we assigned a default value to a struct property.

/*
struct Person {
  
  var name = ""
}
*/

// We have created an instance using the default initializer.

//var person1 = Person()

// However, if we do not assign a default value to struct property.

/*
struct Person {
  
  var name: String
}
*/

// We pass value while creating an instance

//var person1 = Person(name: "Kyle")

/*
Here, values inside the parenthesis () are automatically assigned 
to corresponding properties of the struct. This is called a 
memberwise initializer.

Note: We can also use a memberwise initializer even if we have 
assigned a default value to a struct property.
*/

//-----------------------------------------------------------------------------

// Example: Memberwise Initializer

/*
struct Person {

// properties with no default values
var name: String
var age: Int
}

// instance of Person with memberwise initializer  
var person1 = Person(name: "Kyle", age: 19)

print("Name: \(person1.name) and Age: \( person1.age)")
*/

//Output
//Name: Kyle and Age: 19

/*
In the above example, we have created the instance person1 
for the Person struct.

Since we have not assigned default values to the properties, 
we use a memberwise initializer to assign values.
*/

//-----------------------------------------------------------------------------

// Function Inside Swift Struct

/*
We can also define a function inside a swift struct. 
A function defined inside a struct is called a method.
*/

/*
struct Car {

  var gear = 0

  // method inside struct
  func applyBrake(){
  print("Applying Hydraulic Brakes")
  }
}

// create an instance 
var car1 = Car()

car1.gear = 5

print("Gear Number: \(car1.gear)")
// access method
car1.applyBrake()
*/

//Output:
//Gear Number: 5
//Applying Hydraulic Brakes

/*
In the above example, we have defined the method named 
applyBraking() inside the Car struct. Notice the 
accessing of the method.

car1.applyBrake()

Here, we have used . notation to access method defined 
inside the struct. Finally, the statement inside the 
method is executed.
*/

//-----------------------------------------------------------------------------

/*
-Structures support many of the same behaviors as classes, 
including methods and initializers.

-One of the most important differences between structures and 
classes is that structures are always copied when they’re passed 
around in your code, but classes are passed by reference.
*/

/*
// enum keyword, "Rank" enum type, "Int" rawValue type.
enum Rank: Int {
    case ace = 1
    case two, three, four, five, six, seven, eight, nine, ten
    case jack, queen, king

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

//--------------------------------

enum Suit {
    case spades, hearts, diamonds, clubs

    func simpleDescription() -> String {
        switch self {
        case .spades:
            return "spades"
        case .hearts:
            return "hearts"
        case .diamonds:
            return "diamonds"
        case .clubs:
            return "clubs"
        }
    }
}

//--------------------------------

// "struct" keyword, "Card" struct name.
struct Card {
    // struct properties
    var rank: Rank
    var suit: Suit
    func simpleDescription() -> String {
        return "The \(rank.simpleDescription()) of \(suit.simpleDescription())"
    }
}
//"threeOfSpades" instance of "Card"
let threeOfSpades = Card(rank: .three, suit: .spades)
let threeOfSpadesDescription = threeOfSpades.simpleDescription()
print(threeOfSpadesDescription)
*/

//Output:
//The 3 of spades

//-----------------------------------------------------------------------------

/*
Write a function that returns an array containing a full deck of cards, 
with one card of each combination of rank and suit.
*/



/*

/* 
-"enum": We use the enum keyword to create an enum.
It is user-defined data type that has a fixed set of related values.
-"Rank": Name of the enum
-"Int": Type of rawValue
*/
enum Rank: Int {
    /*
    -"ace": Enum values are also called enum cases. 
    And, we use the case keyword to declare values inside the enum.
    -If we create any variable, it would be of type enum that is Rank.
    That variable can store value only that is present inside enum.
    -We can assign enum value to enum variable by using enum name
    and . notation followed by enum value.
    -By default, Swift assigns the raw values starting at zero and 
    incrementing by one each time, but you can change this behavior 
    by explicitly specifying values. In the example below, Ace is 
    explicitly given a raw value of 1, and the rest of the raw values 
    are assigned in order.  
    */
    case ace = 1
    case two, three, four, five, six, seven, eight, nine, ten
    case jack, queen, king

    /*
    -"func": This keyword used to define function.
    -"simpleDescription": Function name
    -"String": function return type
    */
    func simpleDescription() -> String {
        /*
        "self" here refers to the current instance of enum "Rank".
        enum value like ace, jack etc. are considered as enum 
        instance.
        */
        switch self {
        /*
        If the "self" keyword knows the current instance for example:
        "ace" then we can use . dot notation followed by enum value 
        without using enum name before . dot to match the "self"
        against ".enumvalue".
        */
        case .ace:
            return "ace"
        case .jack:
            return "jack"
        case .queen:
            return "queen"
        case .king:
            return "king"
        default:
            /*
            "rawValue" keyword is used to access the raw value of
            enum value. Here "self" keyword contain the enum 
            instance for example: ace, jack, etc.
            */
            return String(self.rawValue)
        }
    }
}

//--------------------------------

enum Suit {
    case spades, hearts, diamonds, clubs

    func simpleDescription() -> String {
        switch self {
        case .spades:
            return "spades"
        case .hearts:
            return "hearts"
        case .diamonds:
            return "diamonds"
        case .clubs:
            return "clubs"
        }
    }
}

//--------------------------------

/*
-A struct is used to store variables of different data types.
-"struct": keyword used to define a structure.
-"Card": the name of the structure
*/
struct Card {
    /*
    -"rankP" and "suitP" are variables also called properties.
    -"Rank" and "Suit" are the types of variables.

    */
    var rankP: Rank
    var suitP: Suit
    
    /*
    "deckCollect" is a function name and this function
    return type is array of Card "[Card]" (struct type).
    */
    func deckCollect() -> [Card] {
        /* Here "ranks" and "suits" are arrays.
        Here, we are not going to make any changes
        to the content of arrays so declare these
        arrays as constant by using keyword "let".
        */

        let ranks = [Rank.ace, Rank.two, Rank.three, Rank.four, Rank.five, Rank.six, Rank.seven, Rank.eight, Rank.nine, Rank.ten, Rank.jack, Rank.queen, Rank.king]
        let suits = [Suit.spades, Suit.hearts, Suit.diamonds, Suit.clubs]
        /*
        "deck" is an empty array which will contain values
        of type "Card"
        */
        var deck = [Card]()

        for suit in suits{
            for rank in ranks{
                /*
                -Here, we are adding the value to the empty
                array "deck".
                -The value is of type "Card".
                -The "Card" is a name of struct so it is of
                "struct" type. Hence, to use "struct", we need
                to create an instance of it.
                -"deck" is an array of "Card" that is of type
                "struct". So, to create an instance of "Card" 
                that is of "struct" type. The code is:
                Card(rankP:rank,suitP:suit): We need to enter
                the value of property into "Card". So, we used
                variable name (rankP and suitP) as the argument 
                name for the "Card" instance.
                */
                deck.append(Card(rankP:rank,suitP:suit))
            }
        } 
        return deck
    }

}

/*
-Here, created an instance of Card to access
the function of Struct "Card".
-Pass the value for property to create an
instance of Card type struct.
-We are not making any changes to value
of card instance so we made it constant
by using "let".
*/
let card = Card(rankP: .ace, suitP: .spades)
/*
Here, we called the method of struct (Card)
so method can execute its code and return
deck that is an array of "Card".
-The returned array of "Card" has been
assigned to the "deck" variable and as
we are not making any changes to the 
array of "Card" so we made the variable
"deck" constant.
*/
let deck = card.deckCollect()
/*
-Here using for loop, we accessed each card
from the "deck" array.
-To access the value of each Card, we use
the syntax: card.rankP and card.suitP.
Here "card" variable in for loop holds each "Card".
-To access the value of the property of 
each card, we took the particular card
that is "card" here in the for loop and used the . dot
notation followed by properties/variable 
name of struct Card. That is "rankP" and
"suitP". The syntax is card.rankP and
card.suitP and we converted that value
in String format to print on the console.
*/
for card in deck{
    print("\(card.rankP) of \(card.suitP)") 
}
*/



//Output:

/*
ace of spades
two of spades
three of spades
four of spades
five of spades
six of spades
seven of spades
eight of spades
nine of spades
ten of spades
jack of spades
queen of spades
king of spades
ace of hearts
two of hearts
three of hearts
four of hearts
five of hearts
six of hearts
seven of hearts
eight of hearts
nine of hearts
ten of hearts
jack of hearts
queen of hearts
king of hearts
ace of diamonds
two of diamonds
three of diamonds
four of diamonds
five of diamonds
six of diamonds
seven of diamonds
eight of diamonds
nine of diamonds
ten of diamonds
jack of diamonds
queen of diamonds
king of diamonds
ace of clubs
two of clubs
three of clubs
four of clubs
five of clubs
six of clubs
seven of clubs
eight of clubs
nine of clubs
ten of clubs
jack of clubs
queen of clubs
king of clubs
*/


//-----------------------------------------------------------------------------

/*
-One of the most important differences between structures and 
classes is that structures are always copied (structure is a blue print
and to use it we create an instance of it. When we assign a variable "x"
of an instance to another variable "y", the values of an instance "x" is 
copied to another variable "y". It means if later you change the value
of an instance "x", then it would not change the value of instance "y"
since the value was copied and the instance "y" would retain the old
value which was assigned to it through "x" variable of an instance.)

Structures are always copied when they’re passed around in your code
(Here Structures passed around in your code means when you pass
the instance of a structure from "x" variable of an instance to "y" variable, 
values of an instance are copied.), but classes are passed by reference here
means when you pass the variable "x" of an instance of a class to the 
variable "y" of the same class. The values are not copied separately.
However, the both the "x" and "y" variable points or refer to the same
instance with the same values.

Examples:

// Value type example
struct S { var data: Int = -1 }
var a = S()
var b = a						// a is copied to b
a.data = 42						// Changes a, not b
println("\(a.data), \(b.data)")	// prints "42, -1"

--------------------------------------------------------

// Reference type example
class C { var data: Int = -1 }
var x = C()
var y = x						// x is copied to y
x.data = 42						// changes the instance referred to by x (and y)
println("\(x.data), \(y.data)")	// prints "42, 42"

*/