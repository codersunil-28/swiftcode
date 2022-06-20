// Function

/*
Use func to declare a function. 
Call a function by following its name with a list of arguments in parentheses. 
Use -> to separate the parameter names and types from the function’s return type.
*/

/*
-Use “func” to declare a function.
-person, day: These are parameter names in function definition.
-String: This is parameter type in function definition.
-Use -> to separate the parameter names and types from the function’s return type.
-String defined after symbol (->): function’s return type.
-{}: Braces
*/

// Program 1

func greet(person: String, day: String) -> String {
    return "Hello \(person), today is \(day)."
}
let greetMessage = greet(person: "Bob", day: "Tuesday")
print(greetMessage)

/*

greet(person: "Bob", day: "Tuesday")

The above statement is used to call a function.

person: "Bob", day: "Tuesday”: This is a list of arguments defined within parenthesis while calling a function.

() - Parenthesis.

person, day: Using parameter names as label for arguments in a function call.
*/

//Output:
//Hello Bob, today is Tuesday.

//---------------------------------------------------------------------------------

// Program 2

func greet(person: String, lunch: String) -> String {
    return "Hello \(person), today's special lunch is \(lunch)."
}
let greetMessage = greet(person: "Bob", lunch: "Biryani")
print(greetMessage)

//Output"
//Hello Bob, today's special lunch is Biryani.

//---------------------------------------------------------------------------------