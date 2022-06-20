// Tuple in function

/*
Use a tuple to make a compound value—for example, 
to return multiple values from a function. 
The elements of a tuple can be referred to either by name or by number.”
*/


func calculateStatistics(scores: [Int]) -> (min: Int, max: Int, sum: Int) {
    var min = scores[0]
    var max = scores[0]
    var sum = 0

    for score in scores {
        if score > max {
            max = score
        } else if score < min {
            min = score
        }
        sum += score
    }

    return (min, max, sum)
}

/*
The types within the Tuple can be any type combination, 
making it easy to package different types of data into 
collection to be worked with or passed around in your code. 
Tuples are indexed like arrays and start at 0 as well.
*/

//statistics variable type is Tuple.
let statistics = calculateStatistics(scores: [5, 3, 100, 3, 9])

//The elements of a tuple can be referred to either by name or by number.
print(statistics.sum)
//120
print(statistics.2)
//120


