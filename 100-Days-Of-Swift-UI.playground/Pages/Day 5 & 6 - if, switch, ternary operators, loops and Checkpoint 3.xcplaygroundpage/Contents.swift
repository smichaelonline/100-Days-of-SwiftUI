import Cocoa

// IF STATEMENTS
//if someCondition {
//  print("do something.")
//}

/*
 The condition starts with if, which signals to Swift we want to check some kind of condition in our code.
 The someCondition part is where you write your condition – was the score over 80? Does the array contain more than 3 items?
 If the condition is true – if the score really is over 80 – then we print the “Do something” message.
 */

let score = 85

if score > 80 {
  print("Great job!")
}

// create an array with 3 numbers
var numbers = [1,2,3]
// add a 4th number
numbers.append(4)
// if we have over 3 items
if numbers.count > 3 {
  // remove the oldest number
  numbers.remove(at: 0)
}

//print result - returns 2,3,4
print(numbers)

let name = "Steph"

if name != "Unkown" {
  print("Welcome, \(name)")
}

var username = "littlebaby15"

// if username contains an empty string
if username == "" {
  // Make it equal to "anonymous"
  username = "Anonymous"
}

// can also be written as:
/*
 if username.count == 0 { or if username.isEmpty {
  username = "Anonymous"
 }
 */

print("Welcome, \(username)")

//----------------------
// HOW TO CHECK MULTIPLE CONDITIONS
// && and/logical operator
var temp = 25
if temp > 20 && temp < 30 {
  print("Good day")
}

// || or operator
let userAge = 14
let hasParentalConsent = true

if userAge >= 18 || hasParentalConsent {
  print("good to go")
}

enum TransportationOption {
  case airplane, helicopter, bicycle, car, scooter
}
// must use TransportationOption to set variable so the if statement cases can infer from variable
let transport = TransportationOption.airplane

if transport == .airplane || transport == .helicopter {
  print("let's fly!")
} else if transport == .bicycle {
  print("I hope theres a path")
} else if transport == .car {
  print("vroom vroom")
} else {
  print("Scooter baby")
}

//----------------------
// SWITCH STATEMENTS
enum Weather {
    case sun, rain, wind, snow, unknown
}

let forecast = Weather.sun

// tells swift this is the value we want to check
switch forecast {
  case .sun:
    print("It should be a nice day.")
  case .rain:
    print("Pack an umbrella.")
  case .wind:
    print("Wear something warm")
  case .snow:
    print("School is cancelled.")
  default:
    print("Our forecast generator is broken!")
}

//all switch statements must be exhaustive: you must ensure all possible values are covered.
// you can use fallthrough to allow swift to continue checking cases after its already found a match.
let day = 5
print("My true love gave to me…")

// fallthrough will allow each of the print statments to complete
switch day {
case 5:
    print("5 golden rings")
    fallthrough
case 4:
    print("4 calling birds")
    fallthrough
case 3:
    print("3 French hens")
    fallthrough
case 2:
    print("2 turtle doves")
    fallthrough
default:
    print("A partridge in a pear tree")
}

//----------------------
//TERNARY CONDITIONAL OPERATOR
// the ternary operator lets us check a condition and return one of two values: something if the condition is true, and something if it’s false.

let age = 18
let canVote = age >= 18 ? "Yes" : "No"
// WTF: what, true, false

let hour = 23
print(hour < 12 ? "It's before noon" : "It's after noon")
