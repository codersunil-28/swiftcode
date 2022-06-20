// While and Repeat While Loop

//-------------------------------------------------------------

// While Loop

//Use while to repeat a block of code until a condition changes.

//Program 1

var n = 2
while n < 100 {
    n *= 2
}
print(n)

//Output:
//128

//-------------------------------------------------------------

// Repeat-while Loop

/*
The condition of a loop can be at the end instead, 
ensuring that the loop is run at least once.
*/

// Program 2

var m = 2
repeat {
    m *= 2
} while m < 100
print(m)

//Output:
//128

//-------------------------------------------------------------

/*
You can keep an index in a loop by using ..< to make a range of indexes.

Use ..< to make a range that omits its upper value, 
and use ... to make a range that includes both values.
*/

// Program 3

var total = 0
for i in 0..<4 {
    total += i
}
print(total)

//Output:
//6

//-------------------------------------------------------------

// Program 4

for i in 0..<4 {
    print(i)
}

//Output:
/*
0
1
2
3
*/

//-------------------------------------------------------------

// Program 5

// Use ... to make a range that includes both values.

for i in 0...4 {
    print(i)
}

//Output
/*
0
1
2
3
4
*/

//-------------------------------------------------------------