// for-in loop

//We use for-in to iterate over items in a dictionary by providing a pair of names to use for each key-value pair. 
//Dictionaries are an unordered collection, so their keys and values are iterated over in an arbitrary order.

let interestingNumbers = [
    "Prime": [2, 3, 5, 7, 11, 13],
    "Fibonacci": [1, 1, 52, 3, 5, 8],
    "Square": [1, 4, 9, 16, 25],
]
var largest = 0
var checkerS = ""
for (score, numbers) in interestingNumbers {
    for number in numbers {
        if number > largest {
            largest = number
            checkerS = score // Here the value of score can be accessed from the parent for-in loop.
        }
    }
}
print(largest)
print(checkerS)

//Output:
//52
//Fibonacci

//---------------------------------------------------------------------------------------------------------------------------
