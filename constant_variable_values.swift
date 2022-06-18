
// Constant and Variable values

// Use "let" to make a constant.

let myConstant = 42

/* The value of a constant doesn’t need to be known at compile time, but you must assign it a value exactly once. 
This means you can use constants to name a value that you determine once but use in many places. */

// ------------------------------------------------------------------------------------------------------------------------------------

// Use "var" to make a variable.

var myVariable = 42
myVariable = 50

// ------------------------------------------------------------------------------------------------------------------------------------

// A constant or variable must have the same type as the value you want to assign to it. However, you don’t always have to write the type explicitly. 

// Providing a value when you create a constant or variable lets the compiler infer (conclude) its type.

// In the example above, the compiler infers that myVariable is an integer because its initial value is an integer.

/* If the initial value doesn’t provide enough information (or if isn’t an initial value), 
specify the type by writing it after the variable, separated by a colon. */

let explicitDouble: Double = 70

let myAge: Float = 4
