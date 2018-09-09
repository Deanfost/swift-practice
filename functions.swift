/* FUNCTIONS */
// https://docs.swift.org/swift-book/GuidedTour/GuidedTour.html#ID463

// Basic function
func greeting(person: String, day: String) -> String {
  return "Hello \(person), it is \(day)!"
}

print(greeting(person: "Dean", day: "Thursday"))

// Function without param labels
func greeting2(_ person: String, _ day: String) -> String {
  return "Hello \(person), it is \(day)!"
}

print(greeting2("Dean", "Thursday"))

// Function with custom param labels
func greeting3(_ person: String, on day: String) -> String {
  return "Hello \(person), it is \(day)!"
}

print(greeting3("Dean", on: "Thursday"))

// Returning compound values (such as a tuple)
func calculateStats(scores: [Int]) -> (min: Int, max: Int, sum: Int) {
  let min = 2
  let max: Int = 25
  let sum = 27
  return (min, max, sum)
}

// Refer to tuple values either by label or index
print(calculateStats(scores: [2, 5, 6]).min)
print(calculateStats(scores: [2, 5, 6]).1)

// Nested functions
func outerFunction(isThing: String) -> String {
  func innerFunction(_ aThing: Int) -> Int {
    return aThing + 5
  }

  return String(innerFunction(4)) + " " + isThing
}

print(outerFunction(isThing: "Wow"))

// Functions are a first-class object, you can return them
func makeIncrementer() -> ((Int) -> Int) {
    func addOne(number: Int) -> Int {
        return 1 + number
    }
    return addOne
}
var increment = makeIncrementer()
print(increment(7))

// A function can take another function as an argument
func hasAnyMatches(list: [Int], condition: (Int) -> Bool) -> Bool {
    for item in list {
        if condition(item) {
            return true
        }
    }
    return false
}
func lessThanTen(number: Int) -> Bool {
    return number < 10
}
var numbers = [20, 19, 7, 12]
print(hasAnyMatches(list: numbers, condition: lessThanTen))
