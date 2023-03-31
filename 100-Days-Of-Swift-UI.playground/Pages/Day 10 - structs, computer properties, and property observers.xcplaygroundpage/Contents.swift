import Cocoa

// STRUCTS
// structs let us create our own custom, complex data types, complete with their own variables and their own functions.

// this struct creates a new type called ALBUM which contains two strings and an int.
struct Album {
  let title: String
  let artist: String
  let year: Int
  
  func printSummary() {
    print("\(title) (\(year) by \(artist))")
  }
}

let red = Album(title: "Red", artist: "Taylor Swift", year: 2012)
let wings = Album(title: "Wings", artist: "BTS", year: 2016)

print(red.title)
print(wings.artist)

// printSummary() prints each items in the struct that belongs to what is called.
red.printSummary()
wings.printSummary()

// if you create an employee using let - swift makes all the data in the struct constant.
// any function that only read data are fine as they are but any that change data belonging to the struct must be marked with MUTATING
struct Employee {
  let name: String
  var vacationRemaining: Int
  
  mutating func takeVacation (days: Int){
    if vacationRemaining > days {
      vacationRemaining -= days
      print("I'm going on vacation!")
      print("Days remaining: \(vacationRemaining)")
    } else {
      print("Not enough days remaining.")
    }
  }
}

// if you were to change var to let - swift would be unable to build coded since you can't call a mutating function on a constant struct.
var archer = Employee(name: "Sterling Archer", vacationRemaining: 14)
archer.takeVacation(days: 5)
print(archer.vacationRemaining)

// Vocab refresh:
// Variables and constants that belong to structs are called PROPERTIES.
// Functions taht belong to structs are called METHODS.
// When we create a constant or variable out of a struct, we call that an INSTANCE – you might create a dozen unique instances of the Album struct, for example.
// When we create instances of structs we do so using an INITIALIZER like this: Album(title: "Wings", artist: "BTS", year: 2016).

// Synatic Sugar: Swift creates a special function inside the struct called init() using all the properties of the struct and its parameters. It treats these as the same:
  // var archer1 = Employee(name: "Sterling Archer", vacationRemaining: 14)
  // var archer2 = Employee.init(name: "Sterling Archer", vacationRemaining: 14)

// Tip: If you assign a default value to a constant property, that will be removed from the initializer entirely. To assign a default but leave open the possibility of overriding it when needed, use a variable property.
//----------------------

//HOW TO COMPUTE PROPERTY VALUES DYNAMICALLY
// Structs can have two kinds of property:
  // a stored property:  a variable or constant that holds a peice of  data inside an instance of a struct
  // a computed proprty: calculates the value of a property dynamically every time its accessed. Computed properties are a blend of both stored properties and functions - they are accessed like stored properties but work like functions. 
