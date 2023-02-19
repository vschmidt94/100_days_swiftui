import UIKit

var greeting = "Hello, playground"

// variables
var name = "Vaughan"  // create a new variable - no semicolon needed to EOL
name = "some new name"

// constants use `let`
let delay = 10
let reason = "fail"

print(name)


// camel case is sorta standard
var myName = "Vaughan"
var dogBreed = "Shepherd"
print(myName, dogBreed)

// multi-line strings
var myLongString = """
It was a
dark and stormy night
"""
print(myLongString)

// string properties
print(myLongString.count)

// or string functions
print(myName.uppercased())
print(myName.hasPrefix("foo"))

// integers
var score = 10
let big = 99999999
let bigger = 999_999_999_999 // can use underscores to format big uns
let underscoresDontMatter = 1_23_456  // underscores just ignored - don't have meaning
score += 1
print(score)
score.isMultiple(of: 3)

// floats
let num = 1.23 + 0.45
print(num)

// Can't mix type
let a = 1
let b = 2.0
// let c = a + b  // gives error
// Once variable is created, it can not change type
let c = a + Int(b)

// bool
let result = true
let result2 = false
var gameOver = true
gameOver.toggle() // toggle a bool
print(gameOver)

// string interpolation
let userName = "John"
let userAge = 20
let msg = "Hello \(userName), you are \(userAge) old"
print(msg)

// arrarys
var beatles = ["John", "Paul", "George", "Ringo"]
var numbers = [4, 8, 15, 16, 23, 42]
var temperatures = [25.3, 28.2, 26.4]

print(beatles[0])
numbers.append(42)

var scores = Array<Int>() // initialize empty array of ints
scores.append(98)
scores.append(72)
print(scores)

// shortcut array declararion
var temps = [Int]()
temps = [62, 45]

// array functions
temps.removeAll()
scores.remove(at: 0)
print(scores)

let bondMovies = ["Casino Royale", "Spectre", "No Time To Die"]
print(bondMovies.contains("Frozen"))

let reversedBondMovies = bondMovies.reversed()
print(reversedBondMovies)

// dictionaries
var employee = [
    "name": "Chuck Norris",
    "job": "badass",
    "location": "everywhere"
]
print(employee)
print(employee["name", default: "None"])

// declare dictionary before use
var heights = [String: Int]()
heights["Yao Ming"] = 229
heights["Shaquille O'Neal"] = 216
heights["LeBron James"] = 206

// Sets
let famousActors = Set(["Denzel Washington", "Tom Cruise", "Nicolas Cage", "Samuel L Jackson"])
var actors = Set<String>()
actors.insert("Denzel Washington")
actors.insert("Tom Cruise")
actors.insert("Nicolas Cage")
actors.insert("Samuel L Jackson")

// Enums - use case
enum Weekday {
    case monday
    case tuesday
    case wednesday
    case thursday
    case friday
}
var day = Weekday.monday
day = .tuesday
print(day)

enum alternateWeekday {
    case mon, tue, wed, thr, fri, sat, sun
}

// enums can have associated values
enum Activity {
    case bored
    case running(destination: String)
    case talking(topic: String)
    case singing(volume: Int)
}
let talking = Activity.talking(topic: "football")
print(talking[topic])

// type annotations
// Swift can Infer types, byut also can annotate
var myDouble: Double = 1  // otherwise would be infered to be int
print(myDouble)

// Can pre-define contants
let username: String
// lots of complex logic
username = "@twostraws"
// lots more complex logic
print(username)


