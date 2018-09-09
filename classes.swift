/* CLASSES IN SWIFT */
// https://docs.swift.org/swift-book/GuidedTour/GuidedTour.html#ID464
// Basic shape class
/* Note that there are 3 basic steps for constructing a subclass:

    1. Setting the value of properties that the subclass declares.
    2. Calling the superclass’s initializer.
    3. Changing the value of properties defined by the superclass.
       Any additional setup work that uses methods, getters, or
       setters can also be done at this point.
*/

class Shape {
  // By default these are public
  private var name: String
  private var color: String
  private var sides: Int

  init(name: String, color: String, sides: Int) {
    self.name = name
    self.color = color
    self.sides = sides
  }

  func description() -> Void {
    print("It is a \(self.name) with \(self.sides) sides that is \(self.color)")
  }
}

var shape = Shape(name: "Triangle", color: "Yellow", sides: 3)
shape.description()

// Subclass of shape
class Triangle: Shape {
  var dimensions: Int
  var no: String = "0"
  init(color: String) {
    self.dimensions = 2
    super.init(name: "Triangle", color: color, sides: 3)
  }

  // Getters and setters for compuatable values
  var foo: Int {
    get {
        return 3 * dimensions
    }
    set(value) {
        dimensions = value / 3
    }
}

/* NOTE THAT THERE ARE ALSO DIDSET AND WILLSET VALUES. Look into those in the docs. */

  override func description() -> Void {
    super.description()
    print("Hello I have been overwritten and have \(self.dimensions) dimensions")
  }
}

var triangle = Triangle(color: "Yellow")
triangle.dimensions = 4
triangle.foo = 6
triangle.description()
