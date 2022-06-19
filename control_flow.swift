// Control Flow

// Conditionals: "if" and "switch"
// Loops: "for-in", "while", "repeat-while"

// Parentheses (): around the condition or loop variable are optional. 

// Braces {}: around the body are required.


let individualScores = [75, 43, 103, 87, 12]
var teamScore = 0
for score in individualScores {

    /*if statement, the conditional must be a Boolean expression — 
    this means that code such as if score { ... } is an error, 
    because the score is not a Boolean expression and it would not considered to zero (Boolean value) implicitly. 
    */
    if score > 50 {

        teamScore += 3
    } else {
        teamScore += 1
    }
}
print(teamScore)

// Output:
//11
