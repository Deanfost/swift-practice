/* INTERFACE FOR POLYMORPHIC INTEGER LINKED LIST */
protocol IntLinkedList {
  // Sum all numbers in the list
  func sum() -> Int
  // Multiply all numbers in the list
  func multiply() -> Int
  // Return a new list with values that satisfy the predicate
  func filter(p: (Int) -> Bool) -> IntLinkedList
  // Print out a representation of the list
  func printOut()
}

/* FILLED CLASS OF LINKED LIST */
class Filled: IntLinkedList {
  var value: Int
  var next: IntLinkedList

  init(_ value: Int, _ next: IntLinkedList) {
    self.value = value
    self.next = next
  }

  func sum() -> Int {
    return self.value + self.next.sum()
  }

  func multiply() -> Int {
    return self.value * self.next.multiply()
  }

  func filter(p: (Int) -> Bool) -> IntLinkedList {
    if p(self.value) {
      return Filled(self.value, self.next.filter(p: p))
    }
    else {
      return self.next.filter(p: p)
    }
  }

  func printOut() {
    print(String(self.value) + "\n")
    self.next.printOut()
  }
}

/* EMPTY CLASS OF LINKED LIST */
class Empty: IntLinkedList {
  func sum() -> Int {
    return 0
  }

  func multiply() -> Int {
    return 1
  }

  func filter(p: (Int) -> Bool) -> IntLinkedList {
    return Empty()
  }

  func printOut() {
    print("")
  }
}

var list = Filled(1, Filled(2, Filled(3, Filled(4, Empty()))))
print("Multiply all numbers: " + String(list.multiply()))
print("Sum all numbers: " + String(list.sum()))
print("Numbers contained: ")
list.printOut()

func lessThan3(_ x: Int) -> Bool {
  // Determine if the value is less than 3
  if x < 3 {
    return true
  }
  else {
    return false
  }
}

var filtered = list.filter(p: lessThan3)
print("Filtered list: ")
filtered.printOut()
