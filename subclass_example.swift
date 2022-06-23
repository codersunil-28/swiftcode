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

//---------------------------------------------------------------------------------------------------------------------

// Subclass Circle

class Circle: NamedShape{

    var radius: Double
    var areaCircle: Double = 0.0

    init(radius: Double, name: String){
        self.radius = radius
        super.init(name:name)
    }

    func area() -> Double{
        let areaOfCircle = 2 * 3.14 * radius
        /*
        We cannot access the value of a local variable of a function into another function.
        To access it, we can assign value of a local variable to a global variable. 
        And, then we can use it in any function within the class.
        */
        areaCircle = areaOfCircle
        return areaCircle
    }

    override func simpleDescription() -> String {
        return "A circle whose area is \(areaCircle)"
    }
}
let test1 = Circle(radius: 5.2, name: "my test circle")
// The "name" variable of superclass is overrided so the overrided value will be displayed.
print(test1.name)
print("Area of circle: ", test1.area())
print(test1.simpleDescription())

//Output:
//my test circle
//Area of circle:  32.656000000000006
//A circle whose area is 32.656000000000006