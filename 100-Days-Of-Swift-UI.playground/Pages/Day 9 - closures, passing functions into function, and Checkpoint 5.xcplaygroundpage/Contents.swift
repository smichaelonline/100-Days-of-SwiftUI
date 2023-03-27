import Cocoa

// Closures
func greetUser() {
  print("Hi there!")
}

greetUser()

// this creates a copy of the function then calls the copy.
var greetCopy = greetUser
// When youre copying a function you won't include the parentheses after is. var greetCopy = greetUser NOT greetUser(). if you use the parentheses then you are calling the funtion and assigning the return to something else.
greetCopy()

// closure expression: a chunk of code we can pass around and call whenever we want.
// you can assign functionality directly to a constant or variable
/*
 let sayHello = {
 print("Hi there!")
 }
 
 sayHello()
 */
// if you want the closure to accept parameters - put the information inside of the braces:
 
let sayHello = { (name: String) -> String in
  "Hi \(name)!"
}

sayHello("Steph")

// in is used to mark the end of parameters and return type - everything after in is the body of the closure.

// greetUser() takes no parameters, returns no value, and does not throw errors. If we were to write it as a type annotation for greetCopy, it would look like:
// var greetCopy: () -> Void = greetUser

// the empty parentheses markes a function that takes no parameters.
// the arrow means we are about to declare the return type for the function
// Void means "nothing" - the function returns nothing. Can also be written as () but it can be confused with an empty parameter list

//every functions type depends on the data it recieves and sends back. the names of the data it recieves is not part of the functions type.

func getUserData(for id: Int) -> String {
  if id == 1989 {
    return "Taylor Swift"
  } else {
    return "Anonymous"
  }
}

// the function accepts and int and returns a string.
let data: (Int) -> String = getUserData
// when we take a copy of the function the type of function doesnt include the for parameter name. so when we call the copy we use data(1989) instead of data(for: 1989)
let user = data(1989)
print(user)

let team = ["Gloria", "Suzanne", "Piper", "Tiffany", "Tasha"]
let sortedTeam = team.sorted()
print(sortedTeam)


// sorted() allows us to pass in a custom sorting function to control certain scenarios.
// This function must accept two strings, and return true if the first string should be sorted before the second, or false if the first string should be sorted after the second.

func captainFirstSorted(name1: String, name2: String) -> Bool {
  // if the first name is Suzannr - return true so name1 is sorted before name2.
  if name1 == "Suzanne" {
    return true
  // if name2 is Suzanne return false so name1 is sorted after name2.
  } else if name2 == "Suzanne" {
    return false
  }
  
  // if neither name is Suzanne - just use a normal alphabetical sort
  return name1 < name2
}

//let captainFirstTeam = team.sorted(by: captainFirstSorted)
//  print(captainFirstTeam)

// we can create closures as anonymous functions, storing them inside constants and variables - see sayHello example

// we can also pass functions into other functions like captainFirstSorted() into sorted()

// start a new closure: write an open brace, list its parameters and return type, write in, then put our standard function code.

// calling sorted() like above.
// instead of passing in a function, we're using a closure - everything from opening brace after by: to the closing brace is part of the closure. 
let captainFirstTeam = team.sorted(by: {(name1: String, name2: String) -> Bool in
  if name1 == "Suzanne" {
    return true
  } else if name2 == "Suzanne" {
    return false
  }
  
  return name1 < name2
})
