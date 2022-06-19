// Switch Case

// Switches support any kind of data and a wide variety of comparison operations—they aren’t limited to integers and tests for equality.

let vegetable = "red pepper"
//Execution doesn’t continue to the next case, so you don’t need to explicitly break out of the switch at the end of each case’s code.
switch vegetable {
case "celery":
    print("Add some raisins and make ants on a log.")
case "cucumber", "watercress":
    print("That would make a good tea sandwich.")
    //Notice how let can be used in a pattern to assign the value that matched the pattern to a constant.
case let x where x.hasSuffix("pepper"):
    //After executing the code inside the switch case that matched, the program exits from the switch statement.
    print("Is it a spicy \(x)?")
    //Execution doesn’t continue to the next case, so you don’t need to explicitly break out of the switch at the end of each case’s code.
default:
    print("Everything tastes good in soup.")
}


//Output:
//Is it a spicy red pepper?
