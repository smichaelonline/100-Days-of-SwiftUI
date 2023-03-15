import Cocoa

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

