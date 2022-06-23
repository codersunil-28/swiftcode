// Define class, variable and constant property with function that takes an argument.

class Shape{
    /* 
    The properties of class can be accessed directly within the class. 
    However, to access the properties outside its class, we need to call it with the help of its instance.
    */

    var numberOfSides = 0
    let squareSidesLength = 7

    func simpleDescription() -> String{
        return "A square shape with \(numberOfSides) sides."
    }

    func areaOfSquare(message: String) -> String
    {
        let areaMeasure = squareSidesLength * squareSidesLength
        let result = "\(message) \(areaMeasure)"
        return result
    }
}

// Shape() used to create an instance. The instance name is squareShape
var squareShape = Shape()

squareShape.numberOfSides = 4
//To access the property "numberOfSides" outside its class, we need to call it with the help of its instance.
print("Total number of sides in Square: ", squareShape.numberOfSides)

var shapeNoOfSides = squareShape.simpleDescription()
print(shapeNoOfSides)

print("Sides length of square: ",squareShape.squareSidesLength)

var areaDim = squareShape.areaOfSquare(message: "The dimension of square is")
print(areaDim)

//Output:
//Total number of sides in Square:  4
//A square shape with 4 sides.
//Sides length of square:  7
//The dimension of square is 49