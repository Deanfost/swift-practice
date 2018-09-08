/* BASICS OF SWIFT */

// Basic values
var myVariable = 0;
let myConstant = 10;
let myConstant2: String = "Help"
var myVariable2: String = "Wow look at me"
var myVariable3: Bool = true

// Concatnation of strings and other values
var helpMe = String(12) + "wow"

// String interpolation
let isString = "Help me \(myConstant)"
// print(isString)

// Multi-line strings
let quotation = """
help me dude
wow
"""
// print(quotation)

// Dictionaries and lists
var shoppingList = ["Help", "wow"]
var stringList: [String] = ["Wow strings"]
var stringEmpty: [String] = []
shoppingList[0] = "Changed it"
// print(shoppingList[0])

var dictionary: [AnyHashable: String] = ["Hello": "wow", 12: "Help"]
var dict: [AnyHashable: String] = [:]
var dictionary2 = ["Hello": 12, "Wow": 13]
var dictionary3 = [12: "Hello"]
var dictionary4: Any = [12: "help", "wow": false]

var emptyList = [Any]()
var emptyDict = [String: Float]()

// Control flow
let scores = [12, 12, 45, 34, 21, 85]
var teamScore = 0

for score in scores {
    if score > 0 {
        teamScore += 3
    }
    else {
        teamScore += 1
    }
}
// print(teamScore)


// Loops - replace with 'n' to use the value (end-inclusive)
for _ in 0...10 {
  // print(...)
}

// (end-exclusive)
for n in 0..<10 {
  print(n)
}

// Optionals
var optionalString: String? = "Hello"
print(optionalString = nil)

var optionalName: String? = "Dean Foster"
// optionalName = nil
// Check if the value exists with 'let', else do the other thing
if let name = optionalName {
  print(name)
}
else {
  print("No name")
}

// Optionals with default values
let nickName: String? = nil
let fullName: String = "Johnny Appleseed"
// Uses nickName if available, uses fullName as default value if needed
let greeting = "Hello \(nickName ?? fullName)"
// print(greeting)

// Switch statements
let veg = "Red pepper"
switch veg {
case "celery":
  print("Look its a celery")
case "potato", "Watercress":
  print("Look its not")
case let x where x.hasSuffix("pepper"):
  print("Wow it worked")
default:
  print("Default")
}

// Iterating through Dictionaries
let interestingNumbers = [
    "Prime": [2, 3, 5, 7, 11, 13],
    "Fibonacci": [1, 1, 2, 3, 5, 8],
    "Square": [1, 4, 9, 16, 25],
]
var largest = 0
for (kind, numbers) in interestingNumbers {
    for number in numbers {
        if number > largest {
            largest = number
            print(kind)
        }
    }
}

// While Loops
var n = 2
while n < 100 {
    n *= 2
}
print(n)

// Do-while loops
var m = 2
repeat {
    m *= 2
}
while m < 100
  print(m)
