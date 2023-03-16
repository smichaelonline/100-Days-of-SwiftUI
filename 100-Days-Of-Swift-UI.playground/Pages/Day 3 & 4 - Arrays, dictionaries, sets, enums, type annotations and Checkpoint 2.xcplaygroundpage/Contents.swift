import Cocoa

// DAY 3 & 4
// ARRAYS

var beatles = ["John", "Paul", "George", "Ringo"]

// add new items to an array
beatles.append("Adrian")
// arrays can only have one data type at a time. *Type safety
// empty array is initialized like Array<TYPE>() or [TYPE]()
var scores = [Int]()
scores.append(100)
scores.append(80)
scores.append(85)
print(scores[1])
// use .count to count how many items are in an array
scores.count
// remove items using remove(at:) which removes from a specific index or removeAll() which will clear everything
scores.remove(at: 2)
scores.count
// use contains() to check if there is a specific item - returns boolean
scores.contains(100)
// use .sorted() to sort arrays in ascending order. The original array is not changed.
scores.sorted()
// use reversed() to reverse an array
let presidents = ["Bush", "Obama", "Trump", "Biden"]
let reversedPresidents = presidents.reversed()
print(reversedPresidents)
// When you reverse an array, Swift is very clever – it doesn’t actually do the work of rearranging all the items, but instead just remembers to itself that you want the items to be reversed.

// Arrays are a great choice when items should be stored in the order you add them, or when you might have duplicate items in there, but very often accessing data by its position in the array can be annoying or even dangerous.
// good for: days of the week or temperatures for a city

// ------------------
// DICTIONARIES
// dictionaries don’t store items according to their position like arrays do, but instead let us decide where items should be stored
// key: value
let employee2 = [
  "name": "Taylor",
  "job": "Clerk",
  "location": "here"
]
// when you access data inside a dictionary, it will tell us “you might get a value back, but you might get back nothing at all.” Swift calls these optionals because the existence of data is optional - it might be there or it might not.
// Error: “Expression implicitly coerced from 'String?' to 'Any’” means "this data might not actually be there – are you sure you want to print it?”
// provide a default value in case the key doesnt exist
print(employee2["name", default: "Unknown"])
print(employee2["job", default: "Unknown"])
print(employee2["location", default: "Unknown"])

// initialize a empty dictionary: [Type: Type]()

// ---------------------
// SETS
// Sets are similar to arrays, except you can’t add duplicate items, and they don’t store their items in a particular order.
var people = Set(["Denzel", "Taylor", "Will"])
print(people)
people.insert("Tom")
print(people)
// example of using a set is actors in an organization. They all have specific names and there will never be duplicates.
// Sets store items in a optimized order in order to locate them faster.
// Running .contains() in a set will be much faster than an array since in an array it will have to go through every item

//-----------------------
//ENUMS
// a set of named values. Lets us define a new data type with a handful of specific values that it can have.
enum Weekdays {
  case monday
  case tuesday
  case wednesday
  case thursday
  case friday
}

// can also write the cases as : case monday, tuesday, wednesday, thursday, friday
var day = Weekdays.monday
day = Weekdays.tuesday

// can also write "day = .tuesday" since Swift is inferring the that day will be a type of weekday
//One major benefit of enums is that Swift stores them in an optimized form – when we say Weekday.monday Swift is likely to store that using a single integer such as 0, which is much more efficient to store and check than the letters M, o, n, d, a, y.

//----------------------
// TYPE ANNOTATIONS
// Type annotations allow us to be specific with what data types we want.
//String
let playerName: String = "Roy"
//Int
var luckyNumber: Int = 13
//Double
let pi: Double = 3.141
// Bool
var isAuthenticated: Bool = true
//Array: holds lots of different values, all in the order you add them.
var albums: [String] = ["Red", "Fearless"]
//Dictionary: Dictionary holds lots of different values, where you get to decide how data should be accessed.
var user: [String: String] = ["id": "@twostraws"]
//Sets: holds lots of different values, but stores them in an order that’s optimized for checking what it contains.
var books: Set<String> = Set(["The Bluest Eye", "Foundation", "Girl, Woman, Other"])

// Swift must at all times know what data types your constants and variables contain.

//------------------------
// SUMMARY
/*
- Arrays let us store lots of values in one place, then read them out using integer indices. Arrays must always be specialized so they contain one specific type, and they have helpful functionality such as count, append(), and contains().
- Dictionaries also let us store lots of values in one place, but let us read them out using keys we specify. They must be specialized to have one specific type for key and another for the value, and have similar functionality to arrays, such as contains() and count.
- Sets are a third way of storing lots of values in one place, but we don’t get to choose the order in which they store those items. Sets are really efficient at finding whether they contain a specific item.
- Enums let us create our own simple types in Swift so that we can specify a range of acceptable values such as a list of actions the user can perform, the types of files we are able to write, or the types of notification to send to the user.
 - Swift must always know the type of data inside a constant or variable, and mostly uses type inference to figure that out based on the data we assign. However, it’s also possible to use type annotation to force a particular type.
- Out of arrays, dictionaries, and sets, it’s safe to say that you’ll use arrays by far the most. After that comes dictionaries, and sets come a distant third.
 */

//CHECKPOINT 2:
// Ceate an array of strings, then write some code that prints the number of items in the array and also the number of unique items in the array.
var animals = ["Dog", "Bird", "Cat", "Monkey","Dog"]
print("Total animals: \(animals.count)")
var uniqueAnimals = Set(animals)
print("Total unique animals: \(uniqueAnimals.count)")
