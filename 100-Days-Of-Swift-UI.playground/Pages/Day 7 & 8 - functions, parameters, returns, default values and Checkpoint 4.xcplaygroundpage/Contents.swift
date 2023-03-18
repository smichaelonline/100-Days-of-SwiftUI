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

