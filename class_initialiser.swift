// An initializer to set up the class when an instance is created. Use init to create one.

class NamedShape {
    var numberOfSides: Int = 0
    //Every property needs a value assigned—either in its declaration (as with numberOfSides) or in the initializer (as with name).
    var name: String

/*
-"self" keyword is used to distinguish the name property from the name argument to the initializer.
-The arguments to the initializer are passed like a function call when you create an instance of the class.
*/

    init(name: String) {
        self.name = name
    }

    // Use deinit to create a deinitializer if you need to perform some cleanup before the object is deallocated (To remove from the set of resources).

    func simpleDescription() -> String {
        return "A shape with \(numberOfSides) sides."
    }
}

var namedShape = NamedShape(name: "Sunil")
namedShape.numberOfSides = 5

print(namedShape.name)
print(namedShape.simpleDescription())

//Output:
//Sunil
//A shape with 5 sides.