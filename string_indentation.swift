
// String Indentation

/*
Indentation of each quoted line is removed as long as it matches the indentation of the closing quotation marks.
It means, the number of white spaces for closing quotation marks at its beginning. 
The same amount of white spaces would be removed at the beginning of the each quoted line. (If there is any.)
Indentation of each quoted line should match the indentation of closing quotation marks. Otherwisw, it would give error.
*/

//------------------------------------------------------------------------------------------

// Program 1

let apples = 3
let oranges = 5
let quotation = """
I said "I have \(apples) apples."
And then I said "I have \(apples + oranges) pieces of fruit."
"""
print(quotation)

//Output: 
//I said "I have 3 apples."
//And then I said "I have 8 pieces of fruit."

//------------------------------------------------------------------------------------------

// program 2

let apples = 3
let oranges = 5
let quotation = """
  I said "I have \(apples) apples."
   And then I said "I have \(apples + oranges) pieces of fruit."
"""
print(quotation)

//Output:
//  I said "I have 3 apples."
//   And then I said "I have 8 pieces of fruit."

//------------------------------------------------------------------------------------------

// program 3

let apples = 3
let oranges = 5
let quotation = """
  I said "I have \(apples) apples."
   And then I said "I have \(apples + oranges) pieces of fruit."
 """
print(quotation)

//Output:
// I said "I have 3 apples."
//  And then I said "I have 8 pieces of fruit."

//------------------------------------------------------------------------------------------

// Indentation of each quoted line should match the indentation of closing quotation marks. Otherwisw, it would give error.

// program 4

let apples = 3
let oranges = 5
let quotation = """
I said "I have \(apples) apples."
And then I said "I have \(apples + oranges) pieces of fruit."
  """
print(quotation)

//Output:
/*
error: insufficient indentation of next 2 lines in multi-line string literal
I said "I have \(apples) apples."
^
string_indentation.swift:69:1: note: should match space here
  """
^
string_indentation.swift:67:1: note: change indentation of these lines to match closing delimiter
I said "I have \(apples) apples."
^
*/

//------------------------------------------------------------------------------------------

// program 5

let apples = 3
let oranges = 5
let quotation = """
  I said "I have \(apples) apples."
   And then I said "I have \(apples + oranges) pieces of fruit."
  """
print(quotation)

//Output:
//I said "I have 3 apples."
// And then I said "I have 8 pieces of fruit."

//------------------------------------------------------------------------------------------

// program 6

let apples = 3
let oranges = 5
let quotation = """
  I said "I have \(apples) apples."
   And then I said "I have \(apples + oranges) pieces of fruit."
   """
print(quotation)

// Indentation of each quoted line should match the indentation of closing quotation marks. Otherwisw, it would give error.

//Output:

/*
error: insufficient indentation of line in multi-line string literal
  I said "I have \(apples) apples."
  ^
string_indentation.swift:114:3: note: should match space here
   """
  ^
string_indentation.swift:112:3: note: change indentation of this line to match closing delimiter
  I said "I have \(apples) apples."
  ^
  */

//------------------------------------------------------------------------------------------