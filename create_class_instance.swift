// Create an instance of a class and access the properties and methods of the instance.

class Shape {
    var numberOfSides = 0
    func simpleDescription() -> String {
        return "A shape with \(numberOfSides) sides."
    }
}

//Create an instance of a class by putting parentheses after the class name.
var shape = Shape()

//Use dot syntax to access the properties and methods of the instance.
shape.numberOfSides = 7
print("Shape Total Sides: ", shape.numberOfSides)

var shapeDescription = shape.simpleDescription()
print(shapeDescription)

//Output:
//Shape Total Sides:  7
//A shape with 7 sides.