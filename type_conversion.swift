// Type conversion

// Values are never implicitly converted to another type. If you need to convert a value to a different type, explicitly make an instance of the desired type.

// Program 1:
let label = "The width is "
let width = 94
let widthLabel = label + String(width)
print(widthLabel)

//Output: 
//The width is 94

//----------------------------------------------------------------------

// Program 2:
let label = "The width is "
let width = 94
let widthLabel = label + width
print(widthLabel)

//Output:
//error: binary operator '+' cannot be applied to operands of type 'String' and 'Int'

//----------------------------------------------------------------------

// Another simpler way to include values in strings: Write the value in parentheses, and write a backslash (\) before the parentheses. For example:”

// Program 3:
let apples = 3
let oranges = 5
let appleSummary = "I have \(apples) apples."
let fruitSummary = "I have \(apples + oranges) pieces of fruit."
print (appleSummary)
print (fruitSummary)

//Output:
//I have 3 apples.
//I have 8 pieces of fruit.

//----------------------------------------------------------------------

// Program 4:
let num1 = 3.5
let num2 = 5.2
let name = "Sunil"
let wishOne = "Good morning \(num1) " + name
let wishTwo = "I have \(num1 + num2) pieces of fruit."
print (wishOne)
print (wishTwo)

//Output:
//Good morning 3.5 Sunil
//I have 8.7 pieces of fruit.

//----------------------------------------------------------------------