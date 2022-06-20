// Function can return another function as its value.

/*
Functions are a first-class type. 
This means that a function can return another function as its value.
*/

/*
Languages that support first class functions enable you to use functions 
and methods just like any other object or value. You can pass them as 
arguments, save them in properties or return them from another function. 
In order words, the language treats functions as "first class citizens".
*/

func makeIncrementer() -> ((Float) -> Int) {
    func addOne(number: Float) -> Int {
        return Int(1 + number)
    }
    return addOne
}
var increment = makeIncrementer()
print(increment(7.0))

//Output
//8

//--------------------------------------------------------------------------------