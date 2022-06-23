// Subclass and Override

// Superclass

class NamedShape {
    var numberOfSides: Int = 0
    var name: String

    init(name: String) {
        self.name = name
    }

    func simpleDescription() -> String {
        return "A shape with \(numberOfSides) sides."
    }
}

//------------------------------------------------------------------------------------------------------------------------------

/*
Subclasses include their superclass name after their class name, separated by a colon. 
There’s no requirement for classes to subclass any standard root class, so you can include or omit a superclass as needed.
Methods on a subclass that override the superclass’s implementation are marked with override—overriding a method by accident, 
without override, is detected by the compiler as an error. The compiler also detects methods with override that don’t actually 
override any method in the superclass.
*/

// Subclass

class Square: NamedShape {
    var sideLength: Double

    init(sideLength: Double, name: String) {
        self.sideLength = sideLength
        // To override the value of the superclass property, we can call the initialiser of the superclass and then, we can assign the value to it.
        super.init(name: name)
        // We can directly initialise the property of superclass in the initialiser of subclass.
        numberOfSides = 4
    }

    func area() -> Double {
        return sideLength * sideLength
    }

    override func simpleDescription() -> String {
        return "A square with sides of length \(sideLength)."
    }
}
let test = Square(sideLength: 5.2, name: "my test square")
print("Area of Square: ",test.area())
// Here, we called this function: simpleDescription(). As this function is overrided so the code of overrided function will be executed.
print("Called the overrided function: ", test.simpleDescription())

//Output:
//Area of Square:  27.040000000000003
//Called the overrided function:  A square with sides of length 5.2.