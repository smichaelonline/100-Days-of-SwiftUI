import Cocoa

// FUNCTIONS
// function will print times tables between the range 1 through 12. Takes in a integer as a parameter
func printTimesTables(number: Int) {
  for i in 1...12 {
    print("\(i) x \(number) is \(i * number)")
  }
}

// printTimesTables(number: 5)

// parameters are placeholder names that will get filled in with values when the function is called, so that we have a name for those values inside the function.

// arguments are the actual values that get sent into the function to work with

//----------------------
// RETURNING VALUES FROM FUNCTIONS
//sqrt - calculates the square root of a number. mathematical function built into Cocoa import

let root = sqrt(169)
print(root)

// roll a dice function
// initialize function and set return to integer
func rollDice() -> Int {
  // return a random integer from 1 through 6 (six-sided die)
  return Int.random(in: 1...6)
}

// assign the functions return to a variable
let result = rollDice()
print(result)

//example- compare 2 strings and see if they have the same letters:

func sameLetters(string1: String, string2: String) -> Bool {
  // checks to see if each string has the same letters. .sorted() returns a new string with letters in alphabetical order. == compares both strings to see if they are the same.
  return string1.sorted() == string2.sorted()
}

print(sameLetters(string1: "abc", string2: "bbb"))
// ^optimized function to one line return. initially wrote inner code for function as:
/*
 if string1.sorted() == string2.sorted() {
  return true
 } else if {
  return false
 }
 */

// Pythagorean theorem:
func pythagoras(a: Double, b: Double) -> Double {
  sqrt(a * a + b * b)
}

let c = pythagoras(a: 3, b: 4)
print(c)

//----------------------
// HOW TO RETURN MULTIPLE VALUES FROM FUNCTIONS
