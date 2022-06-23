// Objects and Classes

/*
Use "class" keyword followed by the class’s name to create a class. 
A property declaration in a class is written the same way 
as a constant or variable declaration, except that it’s in 
the context of a class. Likewise, method and function 
declarations are written the same way.
*/

class Shape {
    var numberOfSides = 0
    func simpleDescription() -> String {
        return "A shape with \(numberOfSides) sides."
    }
}

/*
-class: "class" keyword is used to define the class.
-Shape: "Shape" is a class name. It should start with capital letter.
-{}: After class name we write the body within the braces {}.
*/

