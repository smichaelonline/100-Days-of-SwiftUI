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

//------------------------
//FOR LOOP

let platforms = ["iOS", "macOS", "tvOS", "watchOS"]

// loops over all the items in platforms and puts them one by one into os.
// os is only available inside the curly braces
for os in platforms {
  print("Swift works great on \(os)")
}

/*
 We call the code inside the braces the loop body
 We call one cycle through the loop body a loop iteration.
 We call os the loop variable. This exists only inside the loop body, and will change to a new value in the next loop iteration.
 */

for i in 1...12 {
  print("5 x \(i) is \(5 * i)")
}

// nested loops
//for i in 1...12 {
//  print("The \(i) times table:")
//
//  for j in 1...12{
//    print(" \(j) x \(i) id \(j*i)")
//  }
//}

// ranges:
// ... is number through number
// ..< is number up to number

// if you want to run a code a certain number of times in a range but dont want to use i or j - you can swap with _

//----------------------
//WHILE LOOPS
// a while loop will continually execute until the body condition is false
var countdown = 10

while countdown > 0 {
  print("\(countdown)...")
  countdown -= 1
}

print("Blast off!")

// while loops are really useful when you just don’t know how many times the loop will go around.

//random(in:) - Give that a range of numbers to work with, and it will send back a random Int or Double somewhere inside that range.
let id = Int.random(in: 1...1000)
let amount = Double.random(in: 0...1)

// roll a virtual 20 sided die

// create an integer to store roll
var roll = 0

// carry on looping until we reach 20
while roll != 20 {
  // roll a new dice an print what it lands on
  roll = Int.random(in: 1...20)
  // print("I rolled a \(roll)")
}
// if we're here it means the loop ended – we got a 20!
// print("Critical hit!")

// for loops are more common when you have a finite amount of data to go through, such as a range or an array, but while loops are really helpful when you need a custom condition.

//----------------------
// How to skip loop items with break and continue
// continue skips the current loop iteration
// break skips all remaining iterations

let filenames = ["me.jpg", "work.txt", "sophie.jpg", "logo.psd"]

for filename in filenames {
  if filename.hasSuffix(".jpg") == false {
    continue
  }
  
  print("Found picture: \(filename)")
}

// That creates an array of filename strings, then loops over each one and checks to make sure it has the suffix “.jpg” – that it’s a picture. continue is used with all the filenames failing that test, so that the rest of the loop body is skipped.

// break exits a loop immediately and skips all remaining iterations
let number1 = 4
let number2 = 14
// creates an integer array that will store common multiples of our two number variables number1 and number2
var multiples = [Int]()

// count from 1 to 100,000 assigning each loop to i
for i in 1...100_000 {
  // check if i is a multiple of the first and second numbers then add it to the multiples array
  if i.isMultiple(of: number1) && i.isMultiple(of: number2) {
    multiples.append(i)
    
    // once we hit 10 multiple, break the loop
    if multiples.count == 10 {
      break
    }
  }
}

print(multiples)
//----------------------
// SUMMARY
/*
 We use if statements to check a condition is true. You can pass in any condition you want, but ultimately it must boil down to a Boolean.
 If you want, you can add an else block, and/or multiple else if blocks to check other conditions. Swift executes these in order.
 You can combine conditions using ||, which means that the whole condition is true if either subcondition is true, or &&, which means the whole condition is true if both subconditions are true.
 If you’re repeating the same kinds of check a lot, you can use a switch statement instead. These must always be exhaustive, which might mean adding a default case.
 If one of your switch cases uses fallthrough, it means Swift will execute the following case afterwards. This is not used commonly.
 The ternary conditional operator lets us check WTF: What, True, False. Although it’s a little hard to read at first, you’ll see this used a lot in SwiftUI.
 for loops let us loop over arrays, sets, dictionaries, and ranges. You can assign items to a loop variable and use it inside the loop, or you can use underscore, _, to ignore the loop variable.
 while loops let us craft custom loops that will continue running until a condition becomes false.
 We can skip some or all loop items using continue or break respectively.
*/

// Checkpoint 3: fizzbuzz

// assings i to a number with 1 to 100 range
for i in 1...100 {
  // checks if i is a multiple of 3
  if i.isMultiple(of: 3) {
    // checks if i is also a multiple of 5
    if i.isMultiple(of: 5) {
      //prints fizzbuzz
      print("FizzBuzz")
      // if only a multiple of 3 - prints fizz
    } else {
      print ("Fizz")
    }
  // checks if i is multiple of 5
  } else if i.isMultiple(of: 5){
    print("Buzz")
  // if i is not multiple of 5 or 3 - print number
  } else {
    print(i)
  }
}
