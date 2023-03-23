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

// if you want to return two or more values from a function you can use an array.
// function that sends back user's details

// using an array:
// this method is problematic because it'll be hard to remember what was assigned to each index or data can change or not exist at all.
/*
 func getUser() -> [String] {
  ["Taylor","Swift"]
 }
 
 let user = getUser()
 print("Name: \(user[0]) \(user[1]])")
 */

// using a dictionary:
// we need to provide default values to each of the keys in case there is an unexpected return
/*
 func getUser() -> [String: String]] {
   ["firstName" : "Taylor",
    "lastName" : "Swift"]
 }

 let user = getUser()
 print("Name: \(user["firstName", default: "Anonymous"]) \(user["lastName", default: "Anonymous"])")
 */

// using a tuple:
// tuples let us put multiple pieces of data into a single variable, but unlike those other options tuples have a fixed size and can have a variety of data types.

// return type is a tuple containing two strings. Each string inthe tuple is named specifically for each item.
func getUser() -> (firstName: String, lastName: String) {
  (firstName: "Taylor", lastName: "Swift")
}

let user = getUser()
// when we call the function we can read the values using the names we assigned above.
print("Name: \(user.firstName) \(user.lastName)")

// tuples differ from dictionaries:
/*
 When you access values in a dictionary, Swift can’t know ahead of time whether they are present or not. Yes, we knew that user["firstName"] was going to be there, but Swift can’t be sure and so we need to provide a default value.
 When you access values in a tuple, Swift does know ahead of time that it is available because the tuple says it will be available.
 We access values using user.firstName: it’s not a string, so there’s also no chance of typos.
 Our dictionary might contain hundreds of other values alongside "firstName", but our tuple can’t – we must list all the values it will contain, and as a result it’s guaranteed to contain them all and nothing else.
 */

//OTHER NOTES ABOUT TUPLES:
// when you return a tuple from a function, you dont need to repeat the names of the items in the tuple because swift already knows the names of them.
    // in the above example - instead of: (firstName: "Taylor", lastName: "Swift") use ("Taylor", "Swift")
// Sometimes you may have tuple elements without names, you can access the tuple elements using the index starting from 0
    // ("Name: \(user.0) \(user.1)")

// If a function returns a tuple, you can actually pull the tuple apart into individual values.
    // i.e. let user = getUser()
    //      let firstName = user.firstName
    //      let lastName = user.lastName
    //      print("Name: \(firstName) \(lastName)")

    // or   let(firstName, lastName) = getUser()
    //      ^ converts the tuple of two elements into two seperate constants.
    //      print("Name: \(firstName) \(lastName)")

// you can use and underscore "_" to ignore part of a tuple.

//----------------------
//HOW TO CUSTOMIZE PARAMETER LABELS
// you can add an underscore to remove external parameters labels
  // good to use a underscore to skip a parameter name is when your functions name is a verb and parameter is a noun - i.e. greet(taylor) instead of greet(person: taylor)
  // or when the parameter label will be the same name as what you're passing in enable(alarm: alarm)
// you can create internal and external parameter names - example below:
func printTimeTable(for number: Int){
  for i in 1...12 {
    print("\(i) x \(number) is \(i * number)")
  }
}

// printTimeTable(for: 5)
// breaking down the above example:
  // 1. for number: Int - the external name is for and the internal name is number. type is Int.
  // 2. when we call the function we use the external name for the parameter - for
  // 3. inside the function we use the internal name for the parameter - number

//----------------------
// SETTING DEFAULT VALUES FOR PARAMETERS
// As a performance optimization, Swift gives arrays just enough memory to hold their items plus a little extra so they can grow a little over time.

// for the print times tables function example:
// func printTimesTables(for number: Int, end: Int = 12) - sets 12 as default value for end parameter
// if we don't need to set a value for the end parameter, we can just call (for: Int)

// As a performance optimization, Swift gives arrays just enough memory to hold their items plus a little extra so they can grow a little over time. If more items are added to the array, Swift allocates more and more memory automatically, so that as little as possible is wasted.

// removeAll() - removes all items in the array and frees up the memory that was in the array.
// keepingCapacity: - Boolean. removes the items while also keeping previous capacity. Has a default value of false.
var characters = ["Lana", "Pam", "Ray", "Sterling"]
characters.removeAll(keepingCapacity: true)

//----------------------
//HANDLING ERRORS IN FUNCTIONS
/*
 Swift needs us to handle errors:
 
 Telling Swift about the possible errors that can happen.
 Writing a function that can flag up errors if they happen.
 Calling that function, and handling any errors that might happen.
 */

// EXAMPLE: if a user asks us to check how strong their password is. Flag an error if their password is too short or obvious.

enum PasswordError: Error {
  // defines two possible errors: short and obvious
  case short, obvious
}

// if a function is able to throw an error without handling them itself - mark the function as throws before return
// being marked throws doesn't mean the function must throw an error, just that is might.
func checkPassword(_ password: String) throws -> String {
  if password.count < 5 {
    throw PasswordError.short
  }
  
  if password == "12345" {
    throw PasswordError.obvious
  }
  
  if password.count < 8 {
    return "OK"
  } else if password.count < 10 {
    return "Good"
  } else {
    return "Excellent"
  }
}

// three steps to handling errors:
/*
 Starting a block of work that might throw errors, using do.
 Calling one or more throwing functions, using try.
 Handling any thrown errors using catch.
 */

/* psuedocode:
 do {
  try someRiskyWork()
 } catch {
  print("Handle errors here")
 }
 */

let string = "12345"

do {
  let result = try checkPassword(string)
  print("Password rating: \(result)")
} catch PasswordError.short {
  print("Plase use a longer password.")
} catch PasswordError.obvious {
  print("I have the same combination on my luggage")
} catch {
  print("There was an error.")
}

// if the checkPassword function works as planned, it will return a value into result.
// if any arrors are thrown, the password rating will never be printed and execution will go into catch block.
//try: must be written before calling all functinos that might throw errors.
// you must be in a do block to use try. make sure to have one or more catch blocks to handle errors.
// when it comes to catching errors, you have to have a catch block that can handle any kind of error.

// Functions can throw errors: you create an enum defining the errors you want to happen, throw those errors inside the function as needed, then use do, try, and catch to handle them at the call site.

//----------------------
// CHECKPOINT 4
// write a function that accepts an integer from 1 through 10,000, and returns the integer square root of that number. That sounds easy, but there are some catches:
/*
1. You can’t use Swift’s built-in sqrt() function or similar – you need to find the square root yourself.
2. If the number is less than 1 or greater than 10,000 you should throw an “out of bounds” error.
3. You should only consider integer square roots – don’t worry about the square root of 3 being 1.732, for example.
4. If you can’t find the square root, throw a “no root” error.
*/

enum SqrtError: Error {
  case outOfBounds, noRoot
}

func sqrtOfInteger (of number: Int) throws {
  var result = 1
  
  if number < 1 || number > 10_000{
    throw SqrtError.outOfBounds
  }
  
  for root in 1...100 {
    result = root * root
    if result == number {
      print("The squareroot of \(number) is \(root)")
    }
  }
  
  if result != number {
    throw SqrtError.noRoot
  }
}

do {
  try sqrtOfInteger(of: 70)
} catch SqrtError.outOfBounds {
  print("Please use a number between 1 and 10,000")
} catch SqrtError.noRoot {
  print("There is no even squareroot.")
}


