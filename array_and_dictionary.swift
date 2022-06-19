// Arrays and Dictionaries

/* We can create arrays and dictionaries using brackets ([]),
and access their elements by writing the index or key in brackets.
A comma is allowed after the last element.
*/

//-----------------------------------------------------------------------------------------------------------

/* Define an array named shoppingList. It has three elements defined in the ([]) separated by commas.
The index of an array starts from 0. */

// Program 1

var shoppingList = ["catfish", "water", "tulips"]

// The below line will change the element at index 1.
shoppingList[1] = "bottle of water"
print(shoppingList)

//Output:

//["catfish", "bottle of water", "tulips"]

//-----------------------------------------------------------------------------------------------------------

// Program 2

var shoppingList = ["catfish", "water", "tulips"]
shoppingList[1] = "bottle of water"
print(shoppingList)

//Arrays automatically grow as you add elements.
shoppingList.append("blue paint")
print(shoppingList)

//Output:
//["catfish", "bottle of water", "tulips"]
//["catfish", "bottle of water", "tulips", "blue paint"]

//-----------------------------------------------------------------------------------------------------------

// Dictionaries

// Program 3

var occupations = [
    "Malcolm": "Captain",
    "Laylee": "Mechanic",
]

print(occupations)

occupations["Jayne"] = "Public Relations"
print(occupations)

occupations["Kayne"] = "Lawyer"
print(occupations)

occupations["Sunil"] = "iOS Dev"
print(occupations)

//Output: Here, the sequence of adding elements to dictionary is not clear. We will clarify it later.

//["Malcolm": "Captain", "Laylee": "Mechanic"]
//["Malcolm": "Captain", "Laylee": "Mechanic", "Jayne": "Public Relations"]
//["Malcolm": "Captain", "Laylee": "Mechanic", "Kayne": "Lawyer", "Jayne": "Public Relations"]
//["Malcolm": "Captain", "Laylee": "Mechanic", "Kayne": "Lawyer", "Jayne": "Public Relations", "Sunil": "iOS Dev"]

//-----------------------------------------------------------------------------------------------------------

// To create an empty array or dictionary, use the initializer syntax.

/*
let emptyArray: [String] = []
let emptyDictionary: [String: Float] = [:]
*/

//-----------------------------------------------------------------------------------------------------------

// Program 4

shoppingList = []
print(shoppingList)

//Output:
//error: cannot find 'shoppingList' in scope

//-----------------------------------------------------------------------------------------------------------

// Program 5

var shoppingList = []
print (shoppingList)

//Output:
//error: empty collection literal requires an explicit type

//-----------------------------------------------------------------------------------------------------------

/* 
To define an empty array, we need to declare "var" instead of "let". 
note: change 'let' to 'var' to make it mutable.
empty collection literal requires an explicit type.
*/

// Program 6

var shoppingList: [String] = []
print (shoppingList)

//Output:
//[]

//-----------------------------------------------------------------------------------------------------------

// Empty array does not have element so there is no index.

// Program 7

// Define an empty array
var shoppingList: [String] = []

// Accessing index [0] in an empty array.
shoppingList[0] = "Sunil"
print(shoppingList)

//Output:
//Fatal error: Index out of range

//-----------------------------------------------------------------------------------------------------------

// If you have defined the scope "var" and the type explicitly for an empty array.
// Then, you can append the value to the empty array.

// Program 8

var shoppingList: [String] = []

shoppingList.append("Sunil")
print(shoppingList)

//Output:
//["Sunil"]

//-----------------------------------------------------------------------------------------------------------