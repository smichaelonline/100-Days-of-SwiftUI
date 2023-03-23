import Cocoa

// Closures
// When youre copying a function you won't include the parentheses after is. var greetCopy = greetUser NOT greetUser()

// closure expression: a chunk of code we can pass around and call whenever we want.

let sayHello = { (name: String) -> String in
  "Hi \(name)!"
}

// in is used to mark the end of parameters and return type - everything after in is the body of the closure.

func getUserData(for id: Int) -> String {
  if id == 1989 {
    return "Taylor Swift"
  } else {
    return "Anonymous"
  }
}

let data: (Int) -> String = getUserData
let user = data(1989)
print(user)
