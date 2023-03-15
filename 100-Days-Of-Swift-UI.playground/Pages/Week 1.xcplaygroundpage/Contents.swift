import Cocoa

// DAY 1 & 2
// STRINGS

var greeting = "Hello, playground"
// Read the length of a string using .count *includes spaces
let greetingLength = greeting.count

// converts string to uppercase letters
print(greeting.uppercased())

let movie = "The Shining"
// Checks to see if the string starts with letters of our choosing. Returns a Boolean
print(movie.hasPrefix("The"))
// Checks to see if the string ends with letters of our choosing. Returns a Boolean
print(movie.hasSuffix("gg"))

//* strings are case sensitive!

// INTEGERS
// +=, -=, *= are compound assignment operators
let number = 120
// checks to see if variable is a multiple of integer. Returns Boolean. Can use a number directly as well.
print(number.isMultiple(of: 3))

// DOUBLES
let a = 1
let b = 2.0
// changes b to an int. Can also change a to a double using Double(a)
let c = a + Int(b)

// older APIs use CGFloat but Swift allows us to use Double anywhere there is CGFloat.

// the reason floating-point numbers are complex is because computers are trying to use binary to store complicated numbers. For example, if you divide 1 by 3 we know you get 1/3, but that can’t be stored in binary so the system is designed to create very close approximations.

// BOOLEANS
// ! = "not"
var isAuthenticated = false
  isAuthenticated = !isAuthenticated
  isAuthenticated = !isAuthenticated

// .toggle() will flip a value from true to false and vice versa. Same as using '!'
var gameOver = false
gameOver.toggle()

//CHECKPOINT 1
let celsius = 7.0
var fahrenheit = (celsius * 9.0) / 5.0 + 32.0
print("It is \(celsius)°C. In fahrenheit, that is \(fahrenheit)°F")

// -------------------------------------------

// DAY 3 & 4
// ARRAYS


