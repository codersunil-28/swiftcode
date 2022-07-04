// Swift Error Handling

/*
An error (exception) is an unexpected event that occurs 
during program execution. For example:
*/

/*
var numerator = 10
var denominator = 0

// try to divide a number by 0
var result = numerator / denominator // error code
*/

//Output:
//Fatal error: Division by zero

/*
Here, we are trying to divide a number by 0. So this type of 
error causes the abnormal termination of the program.
*/

//--------------------------------------------------------------------------

/*
Steps For Error Handling in Swift:

1. Create an enum that represents the types of errors.
2. Create a throwing function using the throws keyword.
3. Call the function using the try keyword.
4. Wrap the code with try in the do {...} block and add 
the catch {...} block to handle all errors.
*/

//--------------------------------------------------------------------------

// 1. Create enum of Errors

/* 
-In Swift, we need to create an enum that represents 
the type of errors we may encounter while writing the program.

-The enum we create must conform to the Error protocol so that 
we can throw an error value inside the function.

Let's see an example:
*/

/*
enum DivisionError: Error {
  case dividedByZero
}
*/

/*
Here, we have created an enum named DivisionError with 
the value dividedByZero.

Since DivisionError conforms to the Error protocol, we'll 
now be able to throw the error value of the enum.
*/

//--------------------------------------------------------------------------

// 2. Create a Throwing Function

/*
In order to throw errors, we need to create a throwing 
function using the throws keyword.

Then we use the throw statement inside the function to 
throw a particular error represented by the enum. 
For example:
*/

/*
// create throwing function using throws keyword
func division(numerator: Int, denominator: Int) throws {

// throw error if divide by 0
  if denominator == 0 {
    throw DivisionError.dividedByZero
  }
  ...     
}
*/

/*
-Here, we have created a throwing function named division() 
using the throws keyword.
-The function throws the dividedByZero value of the 
DivisionError enum if denominator == 0
-Now, based on the value passed during the function call, 
the function throws an error if the error condition is met.

Note: The throw keyword has the same effect as the return keyword. 
return returns some value from the function, whereas throw returns 
error value from the function.
*/

//--------------------------------------------------------------------------

// 3. Function Call Using try Keyword

/*
-In Swift, we use the try keyword while calling the throwing function. 
-It indicates that a function can throw an error. For example:

// call throwing function using try keyword
try division(numerator: 10, denominator: 0)

Here, "division" function is a throwing function, it means
it may throw error. So, when we call a throwing function,
we should call such function with "try" keyword.

However, the error handling process is still incomplete.

If we run the program now, we'll get an error message: 
An error was thrown and was not caught

So, in order to catch the thrown error, we use the do-catch statement.
*/

//--------------------------------------------------------------------------

// 4. Handling Errors Using do-catch Statement

/*
In Swift, we wrap the try code in the do block and add 
the catch block to handle all errors. For example:
*/

/*
do {
  try division(numerator: 10, denominator: 0)
  ...
}

catch DivisionError.dividedByZero {
  // statement
}
*/

/*
Here, we have called the throwing function division() from within 
the do block and attached the catch block to catch the error in 
case the function throws one.

The above catch block is executed based on the enum value of DivisionError.
This is the final step to handle possible errors that may occur in our program.
*/

//--------------------------------------------------------------------------

// Example: Swift Error Handling

/*
// create an enum with error values
enum DivisionError: Error {

  case dividedByZero
}

// create a throwing function using throws keyword
func division(numerator: Int, denominator: Int) throws {

  // throw error if divide by 0
  if denominator == 0 {
    throw DivisionError.dividedByZero
  }
    
  else {
    let result = numerator / denominator
    print(result)
  }
}

// call throwing function from do block
do {
  try division(numerator: 10, denominator: 0)
  print("Valid Division")
}

// catch error if function throws an error
catch DivisionError.dividedByZero {
  print("Error: Denominator cannot be 0")
}
*/

//Output
//Error: Denominator cannot be 0

/*
In the above example,

DivisionError is an enum
division() is a throwing function
the do-catch statement handles the error

We have used try to pass values to the throwing function

try division(numerator: 10, denominator: 0)

to check if the passed values meet the error condition or not.

If the error condition is

-met - the throwing function throws the error, which is 
caught by the catch block.

-not met - the else statement inside throwing function 
and print statement inside the do block are executed.
*/

//--------------------------------------------------------------------------

// Disable Error Handling

/*
In Swift, sometimes we can be confident that the throwing 
function won't throw an error at runtime.

In that case, we can write try! during the function call 
to disable the error handling. For example:
*/

/*
enum DivisionError: Error {
  
  case dividedByZero
}

func division(numerator: Int, denominator: Int) throws {
  if denominator == 0 {
    throw DivisionError.dividedByZero
  }
    
  else {
    let result = numerator / denominator
    print("Result:", result)
  }
}

// disable error handling
try! division(numerator: 10, denominator: 5)
*/

//Output
//Result: 2

/*
In the above example, we have used try! during the function 
call to disable the error handling.

try! division(numerator: 10, denominator: 5)

Here, since we have assigned value 5 to denominator, 
we know that the program will not throw an error. So we 
have disabled the error handling.

Also notice that when we use try!, we don't need to use 
the do-catch statement.

Note: If we use try! and there is an error, our app will simply crash.
*/

//--------------------------------------------------------------------------

// Causes of Error in Swift

//An error can occur for many reasons. Some of them are:

/*

-Invalid user input
-Device failure
-Loss of network connection
-Physical limitations (out of disk memory)
-Code errors
-Opening an unavailable file

Since the errors abnormally terminate the execution of a program, 
it is important to handle these kinds of errors.
*/

//--------------------------------------------------------------------------

/*
try is only used within a do-catch block. 
However, try? and try! can be used without it.

"try?": question mark suggests optional. The result of 
try? throwing_expression is an optional value. It is
a nil if an error is thrown and a wrapped value otherwise.

We can use the if-let structure to unwrap the optional value
try?

"try?": This approach doesn’t care about the error type as 
opposed to the try approach.
*/

/*
Swift Error Protocol:

Error Protocol is just a type for representing error values 
that can be thrown.

Swift requires you to create a custom Error type. Typically 
an Enum is used which conforms to the Error Protocol.
*/

//---------------------------------

/*
enum UserDetailError: Error {
    case noValidName
    case noValidAge
}
*/


/*
If a function or an initializer can throw an error, the throws 
modifier must be added in the definition itself right after the 
paratheses and just before the return type.

func userTest() throws -> <Return Type> {

}

The "throws" keyword would propagate the error from the function to 
the calling code. Otherwise, a non-throwing function must handle 
the error inside that function’s code itself.

"throw" keyword is used for throwing errors from the error type defined.


func userTest() throws {
    if <condition_matches> {
    //Add your function code here
    }
    else{
    throw UserDetailError.noValidName
    }
}


In Error Handling, guard let is useful in the sense that we can 
replace the return statement in the else block with the throwing 
error. This prevents too many if else conditions.

func userTest(age: Int, name: String) throws {
    
    guard age > 0 else{
    throw UserDetailError.noValidAge
    }
    
    guard name.count > 0 else{
       throw UserDetailError.noValidName
    }
}

Note: You cannot add the Error type after the throws keyword in Swift.

In the above code, if the condition in the guard let fails it’ll 
throw an error and the function would return there itself.


In Swift, contrary(opposite in nature) to Java, do-catch block 
is used to handle errors in place of try-catch.

Every function that has throws needs to set in the try statement 
since it has a potential error.

Swift try statement is executed only when it is inside the do-catch 
block as shown below.

do{
try userTest(age: -1, name: "")
} catch let error {
    print("Error: \(error)")
}

*/

//--------------------------------------------------------------------------

// Throwing Errors in Initializers

/*

/*
"StudentError" enum conforms "Error" protocol.
Used enum type to define types of errors.
*/
enum StudentError: Error {
    //"String" here is a type of associated value for case "invalid".
    case invalid(String)
    case tooShort
}


class Student {
    // instance variable "name"
    var name: String
    /*
    -parameter name "name" is an optional variable.
    -"?" is put after the type to define that type
    as optional.
    -initialiser "init" is a throwing initialiser.
    */

    init(name: String?) throws {
        // Used guard let to check and unwrap the optional value "name".
        guard let tempName = name else{
            //"Invalid" is an associated value for case "invalid".
            throw StudentError.invalid("Invalid")
        }
        //Unwrapped value assigned to instance variable "name"
        self.name = tempName }

    /*
    "myName" function is a throwing function.
    */
    func myName(str: String) throws -> String {
        // Checking if string has more than 5 characters.
        if str.count > 5 
        {
            return "My name is \(str)"     
        }
        else{
            throw StudentError.tooShort
        }  
    }
}

//Since the intializer is throwing errors we need to append
// "try" keyword as shown below.

/*
We can use multiple "try" statement within "do" block.
*/

do
{
    /*
    Since initialiser is a throwing initialiser so
    while creating an instance, we need to add "try"
    keyword.
    */
    let s = try Student(name: "Sunil")
    /*
    If initialiser does not throw an error, then
    the below statements under "do" block will
    get executed.
    */
    print("instance variable:name- \(s.name)")

    /*
    Here, we are calling throwing function "myName"
    so we would use try keyword.
    */
    let yourName = try s.myName(str: "Sam")

    /*
    The below statement will execute only when
    function "myName" does not throw any error.
    */
    print("func exe: \(yourName)")

}

/*
Below two catch statement has been defined. 
The catch statement "let error" is more general
and the catch statement "StudentError.tooShort"
is more specific so when you defining multiple
catch statement, put the specific catch statement
before the general one.
*/
catch StudentError.tooShort{
    print("Name too short")
}
catch let error
{
    print(error)
}

*/

//Output:
//If pass value "nil" to the initialiser, the output is:
//invalid("Invalid")

/*
If value passed to initialiser is "Sunil"
and to the function is "Daniel", then the output would be:
instance variable:name- Sunil
func exe: My name is Daniel
*/

/*
If value passed to initialiser is "Sunil"
and to the function is "Sam", then the output would be:
instance variable:name- Sunil
Name too short
*/

//--------------------------------------------------------------------------

// Handling error using try?


/*

/*
-We choose "enum" to define different types of error.
-The enum we defined "StudentError" must conforms 
"Error" protocol so we can handle errors.
*/

enum StudentError: Error {
    //"invalid" case has data type for its associated value.
    //Types of error defined are: "invalid" and "tooShort".
    case invalid(String)
    case tooShort
}

class Student {
    //Here, "name" is an optional variable.
    var name: String?
    //Its a throwing initialiser taking value optional type.
    init(name: String?) throws {
        /*
        There may or may not be value passed to "name"
        parameter. So, we need to confirm first does
        "name" parameter has value or not.
        */
        if name == nil{
            throw StudentError.invalid("Invalid")
        }
        /*
        The if condition does not met so the "name"
        parameter has value of type Optional. We need 
        to unwrap it before assigning to the instance
        variable.
        */
        self.name = name!
    }
}

//It would create an instance with optional variable.

/*
Here, we are creating an instance so initialiser will
get called. The initialiser is a throwing initialiser
so while creating an instance we need to add "try".
There are multiple variants of "try". We choosed
"try?". When using this "try?", we do not need to
define do catch statement.
-We passed the value to the initialiser, if there
is value, then it would be assigned to the instance
variable. Otherwise, if there is no value, initialiser
will return nil as we are using "try?"
-So, we used if let statement to handle optional type.
-If the initialiser returns nil, then else block would
get executed. Otherwise, if block will get executed.
*/
if let t1 = try? Student(name: "Sunil"){
    /*
    The instance variable is of type Optional
    so to print the value of instance variable,
    first we need to unwrap the instance variable
    so we used ! to unwrap the value then we called 
    the instance variable on object using . dot
    notation and the value of instance variable
    gets printed on the console.
    */
    print("Name provided: \(t1.name!)")
}
else
{
    print("No name provided")
}

*/

//Input: nil
//Output: No name provided
//Input: "Sunil"
//Output: Name provided: Sunil

//--------------------------------------------------------------------------

// The Swift Defer keyword (English meaning: postpone)

/*
-The Swift defer statement allows you to execute code right 
before scope is exited (for example, before a function returns).

-Swift defer keyword is used to execute a block of code at a 
later point in time, which is just before the end of execution 
of current scope, where the scope is defer statement’s scope.

The scope of the defer statement is the scope of the program.
*/

/*
print("Hello World")
defer {
    print("Bye!")
}
print("Welcome!")
*/

//Output:
// Hello World
// Welcome!
// Bye!

//---------------------------------

/*
If there are more than one defer blocks in current scope, 
those defer blocks will execute in order from bottom to top 
at the end of execution of current scope.
*/

/*
print("Hello World")
defer {
    print("Bye!")
}
print("Welcome!")
defer {
    print("Catch you later!")
}
print("Please, take a seat.")
*/


// Output:
// Hello World
// Welcome!
// Please, take a seat.
// Catch you later!
// Bye!

//---------------------------------

/*
To execute some code at the end of its scope, we use
defer keyword. If there are multiple defer statement 
then they are executed bottom to top in order.
*/

/*
func greetings() {
    print("Hello World")
    defer {
        print("Bye!")
    }
    print("Welcome!")
    defer {
        print("Catch you later!")
    }
    print("Please, take a seat.")
}
 
print("Starting program..")
greetings()
print("Ending program..")
*/

// Output:
// Starting program..
// Hello World
// Welcome!
// Please, take a seat.
// Catch you later!
// Bye!
// Ending program..

//--------------------------------------------------------------------------

/*
Swift's defer keyword lets us set up some work to be performed 
when the current scope exits. For example, you might want to 
make sure that some temporary resources are cleaned up once a 
method exits, and defer will make sure that happens no matter 
how that exit happens.
*/

/*
Here's some dummy Swift code that opens a file, writes some data, 
then closes the file:


func writeLog() {
    let file = openFile()

    let hardwareStatus = fetchHardwareStatus()
    guard hardwareStatus != "disaster" else { return }
    file.write(hardwareStatus)

    let softwareStatus = fetchSoftwareStatus()
    guard softwareStatus != "disaster" else { return }
    file.write(softwareStatus)

    let networkStatus = fetchNetworkStatus()
    guard neworkStatus != "disaster" else { return }
    file.write(networkStatus)

    closeFile(file)
}


As you can see in the code, a file is opened, then various types 
of data are written out, before finally the file is closed.

But what happens if any one of those status checks returns 
"disaster"? Answer: our guard condition will trap the error 
and exit the method – leaving the file open.

The defer keyword, which effectively means "here's some what 
I want you to do later, no matter what."

That work can be whatever you want: a single method call closing 
a file, or 50 lines of code doing some other important clean up 
work. The important thing is that Swift ensures that it will be 
run before the current scope is ended.
*/

/*
So, we could rewrite the above code like this:


func writeLog() {
    let file = openFile()
    defer { closeFile(file) }

    let hardwareStatus = fetchHardwareStatus()
    guard hardwareStatus != "disaster" else { return }
    file.write(hardwareStatus)

    let softwareStatus = fetchSoftwareStatus()
    guard softwareStatus != "disaster" else { return }
    file.write(softwareStatus)

    let networkStatus = fetchNetworkStatus()
    guard neworkStatus != "disaster" else { return }
    file.write(networkStatus)
}

With that defer call in place, closeFile() will be called no 
matter which of the guards are triggered, or even if none of 
them trigger and the method completes normally.

That's what I mean when I say that deferred work will always 
take place: if you return from a method at the end or part 
way through, or if you exit a method by throwing an error, 
your deferred work will take place.

This makes it perfect for ensuring code is cleaned up under 
all conditions, and is similar to try/finally in other languages.
*/

/*
Using defer inside a method means that its work will be executed 
as the method is exiting. For example:

override func viewDidLoad() {
    super.viewDidLoad()

    print("Step 1")
    myFunc()
    print("Step 5")
}

func myFunc() {
    print("Step 2")
    defer { print("Step 3") }
    print("Step 4")
}

That will print "Step 1", "Step 2", "Step 4", "Step 3", "Step 5" – 
steps 3 and 4 are switched because 3 is deferred until the myFunc() 
method ends, i.e. when it goes out of scope programmatically.

This scope is effectively anything in braces, { and }, but 
realistically there are two main ways you may want to use it:
inside a do block and inside a loop.

do blocks are usually used with catch to handle errors smoothly, 
but you don't need that – you can use do to create a temporary 
scope anywhere inside your method. Any variables created inside 
the do block exist only there, and any work you defer inside the 
block will execute as soon as the closing brace of the block is 
reached.

For example:

print("Step 1")

do {
    defer { print("Step 2") }
    print("Step 3")
    print("Step 4")
}

print("Step 5")


When that runs, you'll see 1, 3, 4, 2, 5 because 2 is deferred 
until the end of the do block.


As I said, loops are also natural places you might want to use 
defer, and it will execute at the end of each loop iteration. 
For example:
*/

/*
for i in 1...10 {
    print ("In \(i)")
    defer { print ("Deferred \(i)") }
    print ("Out \(i)")
}
*/

// Output:
// In 1
// Out 1
// Deferred 1
// In 2
// Out 2
// Deferred 2
// In 3
// Out 3
// Deferred 3
// In 4
// Out 4
// Deferred 4
// In 5
// Out 5
// Deferred 5
// In 6
// Out 6
// Deferred 6
// In 7
// Out 7
// Deferred 7
// In 8
// Out 8
// Deferred 8
// In 9
// Out 9
// Deferred 9
// In 10
// Out 10
// Deferred 10



/*
Your defer calls shouldn't try to exit the current scope 
using something like a return call or throwing an error. 
Other than that, you're good to go!
*/

/*
It’s useful if you’ve got many return statements in a method 
and don’t want to copy and paste the same code before each of
them. The code that you’d put into defer is usually a cleanup 
routine.
*/

/*
var a = "Hello"

func b() -> String {
  defer { a.append(" world") }
  return a
}
print("Before method call: \(a)")
print("Method returned value of a: \(b())")
print("After method call: \(a)")
*/

//Output:
// Before method call: Hello
// Method returned value of a: Hello
// After method call: Hello world

//The defer block is executed at the last where current scope ends.

/*
To check how code runs behind on the processor, for that
you can use Disassembler, the reverse engineering tool 
that lets you disassemble, decompile and debug your applications.

First, compile the code you’ve written with the following command:

xcrun swiftc your_source_code.swift -o output_file

Then, download the app that disassemble, decompile it , run it and 
load output_file in there. 

The application will break down the whole app into the list of 
executable processor instructions. 

Also, for the sake of readability, it will generate a C-like 
pseudocode out of it. 

Here’s what a disassembled pseudocode of function b() looks like:


1  int _$S05test_A01bSSyF() {
2      swift_beginAccess(_$S05test_A01aSSvp, &var_18, 0x20, 0x0);
3      rcx = *_$S05test_A01aSSvp;
4      swift_bridgeObjectRetain(rcx);
5      swift_endAccess(&var_18);
6      $defer #1 ();
7      rax = rcx;
8      return rax;
9  }

Notice that return statements are, as expected, the last operations 
of the method.

You don’t need to focus on all of the random variables being passed 
around in there, it’s not that relevant.

The key lines are 3, 6, and 7. 
*/


/*

/*
-Calls to swift_beginAccess and swift_endAccess are the result of 
accessing the global variable a. 
-At line 3 the initial value of a is stored in rcx register. 
*/
var a = "Hello"

func b() -> String {
  /*
  The defer is executed after the call to swift_endAccess.
  Then, whatever you pass to defer is called at line 6.
  In our case, defer generates a new string “ world” 
  and concatenates it with the string a.
  As soon as we’re done with defer the previously saved value 
  is moved back from rcx to rax at line 7 and is returned at 
  the next step.
  */
  defer { a.append(" world") }
  return a
}

*/


/*
The trick was to save the original value before calling defer.
Therefore, the real equivalent of function b() without defer 
would involve a temporary variable to store the contents of a 
before modifying it:

func c() -> String {
  let d = a
  a.append(" world") // statement equivalent to defer that works on original variable.
  return d  // returning the original value stored/copied in another variable.
}
*/

//--------------------------------------------------------------------------

/*
var a: String? = nil

func b() -> String {
    a = "Hello world"
    defer { a = nil }
    return a!
}

print(b())
print(a)
*/

//Output:
// Hello world
// nil

/*
The above program firstly, access the variable a and assign 
the value defined. After that enter to the function and 
access the variable a and assign the value "Hello world" to
the variable "a". After that control goes to return statement 
and unwrap the value of a that holds value "Hello world".
After unwrapping, the return statement will not execute as it 
is the point where it exits the function and function gets
popped out from the stack. So, before exiting the function, 
that means before executing the return, the defer block will
get executed at the last in the function block. So, to make 
the variable a nil before that we need to hold the unwrapped
value of a in some temporary variable because that value needs
to be returned with return keyword. Hence, internally, it holds
the unwrapped value of a in some temporary variable. After that
in defer block, the value of a is nil. So, the defer block has 
been executed at the last. Now, the temp variable holding the
unwrap value of a will get returned with return keyword. And, 
the program control get transfered to the point where the 
function was call, there unwrapped value of a that is "Hello world"
gets printed on console and as the variable a is declared out of 
the function so the value of it will not vanish after function exit.
The a is nil. So, the next statement after the function call, prints
the value of a. As a is nil so "nil" will get printed on the console.


The defer is executed just before the return keyword is hit to 
execute. 
*/

/*
func b() -> String {
    let a = "Hello world"
    defer { print("sunil")}
    return a
}
print(b())
*/

//Output:
//sunil
//Hello world

/*
Here, in the above code, first the string "Hello world" is
assigned to constant "a". Now, the defer block will execute
before the return statement because, if the return statement 
gets executed, the all the local data will get vanished so 
the data inside the defer will not be used. The defer executes
just before the current scope exit. So, first defer block will
get executed and "sunil" will be printed then returned statement 
will get exectued and value of a would be returned and printed.
*/

/*
var name: String = "James"

func b() -> String {
    let a = " Hello world"
    defer { print("sunil")}
    name += a
    return name
}
print(b())
*/

//Output:
// sunil
// James Hello world

//--------------------------------------------------------------------------

/*

enum PrinterError: Error {

    // We can represent errors using any type that adopts the Error protocol.
    case dividedByZero(String)
    case justTesting(Int)
}

class Calculatation{

  //Use "throws" keyword to mark a function that can throw an error.
  func divideTwoNums(numerator: Int, denominator: Int) throws {
    if denominator == 0{
      // Use "throw" keyword to throw an error
      throw PrinterError.dividedByZero("avoid zero")
    }
    else{
      throw PrinterError.justTesting(1)
    }
  }
}

let obj1 = Calculatation()

do{

  /*
  If you throw an error in a function, the function returns immediately 
  and the code that called the function handles the error.

  If function throw an error the "throws" keyword propagates the error
  to the code that called the function. So, the code that called the 
  function can throw an error so we need to mark that code with "try"
  keyword before that statement.
  */
  try obj1.divideTwoNums(numerator: 12, denominator: 3)
}

/*
Inside the catch block, the error is automatically given the name 
error unless you give it a different name. For example:

catch {
    print(error)
}
*/

catch PrinterError.dividedByZero("avoid zero")
{
  print("Denominator should not be zero")
}
catch PrinterError.justTesting(1)
{
  print("Just testing")
}

//Input: 12, 0
//Output: Denominator should not be zero
//Input: 12, 3
//Output: Just testing

*/

//--------------------------------------------------------------------------

/*
enum PrinterError: Error {
    case outOfPaper
    case noToner
    case onFire
}

func send(job: Int, toPrinter printerName: String) throws -> String {
    if printerName == "Never Has Toner" {
        throw PrinterError.noToner
    }
    return "Job sent"
}

do 
{
    let printerResponse = try send(job: 1040, toPrinter: "Never Has Toner")
    print(printerResponse)
} 

/*
Inside the catch block, the error is automatically given the 
name error unless you give it a different name.

If you do not define the error name then the error which
was thrown in the function, that name would be given to the 
error.

In the function, the error thrown was "PrinterError.noToner" so
the error name would be "noToner". As the error "noToner" defined
as the enum case in the enum, so we can access the enum case as
enumName.enumCase that is "PrinterError.noToner" and its value
would be "noToner".
*/
catch 
{
    print(error)
}
*/


//Output:
//noToner

//--------------------------------------------------------------------------
/*

enum PrinterError: Error {
    case outOfPaper
    case noToner
    case onFire
}

func send(job: Int, toPrinter printerName: String) throws -> String {
    if printerName == "Never Has Toner" {
        throw PrinterError.noToner
    }
    return "Job sent"
}

do 
{
    let printerResponse = try send(job: 1440, toPrinter: "Never Has Toner")
    print(printerResponse)
} 
catch PrinterError.onFire 
{
    print("I'll just put this over here, with the rest of the fire.")
} 
catch PrinterError.noToner 
{
    print("The error is noToner")
} 
catch let printerError as PrinterError 
{
    /*
    Here, the error name of "printerError" would be the one
    which is thrown in the function that is the value of
    "PrinterError.noToner" which is "noToner"
    */
    print("Printer error: \(printerError).")
} 
catch 
{
    print(error)
}
*/


//Output:
//The error is noToner


/*
If there are multiple catch blocks then the one which is more
specific would be selected and its code will get executed.
*/

//--------------------------------------------------------------------------

// Different ways to catch throwing errors from Swift do-catch

/*
All catching mechanisms rely on one concept, pattern matching. 

If the code throws an error in the do clause, it will be matched 
against the catch clauses using a pattern (if provided) after that 
catch keyword, and that clause is selected to handle the error.

Here is the general form of a do-catch statement:

do {
    try expression
    // statements
} catch pattern 1 {
    // statements
} catch pattern 2 where condition {
    // statements
} catch pattern 3, pattern 4 where condition {
    // statements
} catch {
    // statements
}

*/

//--------------------------------------------------------------------------

// Catch all errors

/*
To catch any type of error thrown by the code in the do clause, 
you provide a catch clause without any pattern.
*/

/*
struct ErrorResponse: Codable { // 1

    let code: Int
    let message: String
}

enum APIError: Error { // 2
    case failedResponse(ErrorResponse)
    case unauthorized
    case unknown
}

class APIClient { // 3
    func makeRequest() throws {
        // a throwing function.
    }
}

let client = APIClient()
        
do {
    try client.makeRequest()
} catch { // 1

    // 2
    print(error)
}
*/

/*
1. A catch without pattern matches any error and binds the 
error to a local constant, error.

2. We can access error inside the catch clause without 
explicit declaration of error.

If a catch clause doesn't have a pattern, the clause matches 
any error and binds the error to a local constant named error. 

This behavior is why we can reference the error in our print(error) 
without defining one (2).
*/
//--------------------------------------------------------------------------

// Explicit error binding

/*
If you already have a variable named error outside a do-catch 
statement, the local one will shadow the one outside the catch 
clause.
*/

/*
struct ErrorResponse: Codable { // 1

    let code: Int
    let message: String
}

enum APIError: Error { // 2
    case failedResponse(ErrorResponse)
    case unauthorized
    case unknown
}

class APIClient { // 3
    func makeRequest() throws {
        throw APIError.unknown
    }
}

let client = APIClient()

// 1 An outer error constant of type string.
let error = "Outer error"

do {
    try client.makeRequest()
} catch {
    // 2 A local error constant shadows the error string outside
    // the do-catch statement
    // This will print out the type of APIError, not String.
    print(type(of: error))
    // APIError
}

*/

//--------------------------------------------------------------------------

/*
If you want to reference the outer error constant, you have to 
bind the local error to a new name explicitly. We can do that 
by using let.
*/

/*
struct ErrorResponse: Codable { // 1

    let code: Int
    let message: String
}

enum APIError: Error { // 2
    case failedResponse(ErrorResponse)
    case unauthorized
    case unknown
}

class APIClient { // 3
    func makeRequest() throws {
        throw APIError.unknown
    }
}

let client = APIClient()
        
let error = "Outer error"

do 
{
    try client.makeRequest()
} 
catch let localError { // 1 We bind the error to a local constant named localError.

    print(type(of: error))
    // String

    print(type(of: localError))
    // APIError
}
*/

/*
By specify let localError next to the catch clause, we 
tell Swift to bind an error to the localError constant.
*/

//--------------------------------------------------------------------------

// Catch a particular type of error:

// Catch by error case

/*
struct ErrorResponse: Codable { // 1

    let code: Int
    let message: String
}

enum APIError: Error { // 2
    case failedResponse(ErrorResponse)
    case unauthorized
    case unknown
}

class APIClient { // 3
    func makeRequestThatNeedUnauthorization() throws {
        throw APIError.unauthorized
    }
}

let client = APIClient()
        
do {
    try client.makeRequestThatNeedUnauthorization()
} 

/*
-This catch clause will be called if the error thrown is a 
type of APIError.unauthorized.
-You might want to handle this specific case by presenting 
users with a sign-in screen.
*/
catch APIError.unauthorized 
{ 
    // 1
    // Called when error thrown is APIError.unauthorized
    // TODO: Present a sign in screen
    print(type(of: APIError.unauthorized)) // APIError
    print(APIError.unauthorized) // unauthorized
} 
catch 
{
    print("others")
}
*/
//--------------------------------------------------------------------------

//Catch by error case with an associated value

/*
struct ErrorResponse: Codable { // 1

    let code: Int
    let message: String
}

enum APIError: Error { // 2
    case failedResponse(ErrorResponse)
    case unauthorized
    case unknown
}

class APIClient { // 3
    func makeFailedRequest() throws {
        let response = ErrorResponse(code: 404, message: "File not found")
        throw APIError.failedResponse(response)
    }
}

let client = APIClient()
        
do {
    try client.makeFailedRequest()
} 
/*
Specify a tuple with the same number of an element with 
an associated value. In this case, we have only one 
associated value. We bind that value to an errorResponse 
constant.
*/
catch APIError.failedResponse(let errorResponse){ // 1
  print(errorResponse)
  //ErrorResponse(code: 404, message: "File not found")

}
catch{
  print("others")
}
*/
//--------------------------------------------------------------------------

// Where clause

/*
You can also provide a where clause to filter specific 
conditions of your retrieve value.

Here is an example where we have two catch clauses, one 
for handling ErrorResponse with 404 and one for other codes.
*/


/*
struct ErrorResponse: Codable { // 1

    let code: Int
    let message: String
}

enum APIError: Error { // 2
    case failedResponse(ErrorResponse)
    case unauthorized
    case unknown
}

class APIClient { // 3
    func makeFailedRequest() throws {
        let response = ErrorResponse(code: 404, message: "File not found")
        throw APIError.failedResponse(response)
    }
}

let client = APIClient()
        
do 
{
    try client.makeFailedRequest()
} 
/*
We add a condition to catch only a ErrorResponse with 
a code == 404 by put a condition after where clause.
*/
catch APIError.failedResponse(let errorResponse) where errorResponse.code == 404 
{ // 1

    print("Handle only failed response with error code 404")
    //Handle only failed response with error code 404

} 
//Other responses with code other than 404 will fall into the second catch clause.
catch APIError.failedResponse 
{ // 2
  print("Handle other failed response")
} 
catch 
{
    print("others")
}
*/

/*
-When you make multiple patterns over the same error type, 
make sure you put a more specific case at the top.
-The catch clause is evaluated from top to bottom. 
-If you put a generic version like catch APIError.failedResponse 
on the top, it will catch any response, including the code 404.
-The compiler will help you with this by showing a "Case will 
never be executed" warning.
*/
//--------------------------------------------------------------------------

// Catch by error type

/*
So far, we learn how to catch specific cases of an error type. 
We might not want to handle some errors case by case but as a 
whole. An example I can think of is DecodingError.

Each case of DecodingError tells us a reason why the decode 
operation failed. This is useful for debugging, but we might
not need to handle this case by case since it usually means 
something wrong from your API, and this information is only 
goods for debugging.

The DecodingError error cases.

enum DecodingError {
  case typeMismatch
  case valueNotFound
  case keyNotFound
  case dataCorrupted
}

In this case, you might want to catch the error by its type. 
You can do that with a "is" pattern.
*/


/*
enum DecodingError: Error {
  case typeMismatch
  case valueNotFound
  case keyNotFound
  case dataCorrupted
}

class APIClient {
    
    func makeDataRequest() throws  {
        
        throw DecodingError.keyNotFound
    }
}

let client = APIClient()
        
do {
    try client.makeDataRequest()
   
} 
/*
1. We use the is keyword follow by a type of error that we 
want to match against.
-catch is DecodingError will match the DecodingError 
error regardless of its type.
*/
catch is DecodingError 
{ 
  print("DecodingError") //Output: DecodingError
} 
catch {
    print("others")
}
*/

//--------------------------------------------------------------------------

//Catch by error type and getting an error value

/*
Even though we don't want to handle DecodingError by case, 
we still want to know what kind of error it throws because 
we want to log it somewhere to fix the problem later. That's 
means we want to get access to the error value.

To get the error value, we use let and as instead.
*/

/*
struct User: Decodable {
    let name: String
}

enum DecodingError: Error{
  case nameError(User)
}

enum OtherError: Error{
  case carError(User)
}

class APIClient {
    
    func makeDataRequest() throws {
        let response = User(name: "Sunil")
        throw OtherError.carError(response)
    }
}

let client = APIClient()
        
do 
{
  try client.makeDataRequest()
    
} 
/*
let error as DecodingError try to cast an error to 
DecodingError type, and if successful, bind that to 
an error local constant.
*/
catch let error as DecodingError 
{ // 1

    print("DecodingError: \(error)")
    // DecodingError: keyNotFound(CodingKeys(stringValue: "name", intValue: nil), Swift.DecodingError.Context(codingPath: [], debugDescription: "No value associated with key CodingKeys(stringValue: \"name\", intValue: nil) (\"name\").", underlyingError: nil))
} 
catch 
{
    print("others")
}
*/


//Output:
//others
//--------------------------------------------------------------------------

// Mix and match

// Multiple catch clauses

//You can have different types of patterns for each catch clause.

/*
do {
    let data = try client.makeDataRequest()
    let decoder = JSONDecoder()
    let user = try decoder.decode(User.self, from: data)
} catch let error as DecodingError {
    // Sending error log
} catch APIError.failedResponse(let errorResponse) where errorResponse.code == 404 {
    // Handle only failed response with error code 404
} catch APIError.failedResponse {
    // Handle other failed response
} catch is APIError {
    // Handle the rest of APIError
} catch {
    // Other errors
}
*/

//--------------------------------------------------------------------------

// Multiple patterns

// You can also have multiple patterns within a single catch 
// clause by separate each pattern with a comma (,).

/*
struct User: Decodable {
    let name: String
}

enum APIError: Error{
  case unauthorized
}

enum DecodingError: Error{
  case nameError(User)
}

enum OtherError: Error{
  case carError(User)
}

class APIClient {
    
    func makeDataRequest() throws {
        // let response = User(name: "Sunil")
        // throw DecodingError.nameError(response)
        throw APIError.unauthorized
    }
}

let client = APIClient()
        
do 
{
  try client.makeDataRequest()
} 
catch APIError.unauthorized, is DecodingError 
{ // 1 We handle multiple patterns together with a comma (,).
    print("Unauthorized")
} catch {
    // Other errors
}
*/

//Output:
//Unauthorized

//--------------------------------------------------------------------------

/*
enum PrinterError: Error {
    case outOfPaper
    case noToner
    case onFire
}

enum NameError: Error{
  case wrongName
}

func send(job: Int, toPrinter printerName: String) throws -> String {
    if printerName == "Never Has Toner" {
        throw PrinterError.onFire
    }
    return "Job sent"
}

do {
    let printerResponse = try send(job: 1440, toPrinter: "Never Has Toner")
    print(printerResponse)
} 
/*
If the error matches to "PrinterError.onFire" pattern
then only the first catch block would be executed.
*/
catch PrinterError.onFire 
{
    print("I'll just put this over here, with the rest of the fire.")
} 
/*
Any error case only belongs to "PrinterError" except "PrinterError.onFire"
handled by below catch (let printerError as PrinterError)
*/
catch let printerError as PrinterError 
{
    print("Printer error: \(printerError).")
} 
/*
It catches any error. It is the most generic one.
If the above catch patterns does not match, then
this catch handles the error.

If we throw error: NameError.wrongName, the below 
catch block will be printed.
*/
catch 
{
    print(error)
}
*/

//Output:
//I'll just put this over here, with the rest of the fire.

//--------------------------------------------------------------------------

/*
Another way to handle errors is to use try? to convert 
the result to an optional. 

If the function throws an error, the specific error is 
discarded and the result is nil. 

Otherwise, the result is an optional containing the value 
that the function returned.
*/


/*
enum PrinterError: Error {
    case outOfPaper
    case noToner
    case onFire
}

enum NameError: Error{
  case wrongName
}

func send(job: Int, toPrinter printerName: String) throws -> String {
    if printerName == "Never Has Toner" {
        throw PrinterError.onFire
    }
    return "Job sent"
}


if let printerFailure = try? send(job: 1884, toPrinter: "Never Has Toner"){
  print(printerFailure)
}
else{
  print(PrinterError.onFire)
}
*/


//Output:
//onFire

//--------------------------------------------------------------------------

// defer keyword

/*
Use defer to write a block of code that’s executed after all other 
code in the function, just before the function returns. 

The code is executed regardless of whether the function throws an error.
*/

/*
enum PrinterError: Error {
    case outOfPaper
    case noToner
    case onFire
}

enum NameError: Error{
  case wrongName
}

var name: String=""

func send(job: Int, toPrinter printerName: String) throws -> String {
  defer{
          name = "sunil"
        }
    if printerName == "Never Has Toner" {
        
        throw PrinterError.onFire
        
    }
    
    return "Job sent"
}


if let printerFailure = try? send(job: 1884, toPrinter: "Never Has Toner"){
  print(printerFailure)
}
else{
  print(PrinterError.onFire)
}
print(name)
*/

//Output:
//onFire
//sunil
//--------------------------------------------------------------------------

/*
You can use defer to write setup and cleanup code next to each other, 
even though they need to be executed at different times.

We can write multiple defer blocks and it would be executed in reverse order.
*/


/*
var fridgeIsOpen = false
let fridgeContent = ["milk", "eggs", "leftovers"]

func fridgeContains(_ food: String) -> Bool {
    fridgeIsOpen = true
    defer {
        fridgeIsOpen = false
    }

    let result = fridgeContent.contains(food)
    return result
}
print(fridgeContains("banana"))  // Prints "false"
print(fridgeIsOpen)  // Prints "false"
*/

//--------------------------------------------------------------------------