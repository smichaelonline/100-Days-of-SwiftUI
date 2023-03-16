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

