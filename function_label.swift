// Custom Argument Label in Function.

/*A custom argument label before the parameter name, 
or write _ to use no argument label.
*/

func greet(_ person: String, on day: String) -> String {
    return "Hello \(person), today is \(day)."
}
let greetMessage = greet("John", on: "Wednesday")
print(greetMessage)

//Output
//Hello John, today is Wednesday.