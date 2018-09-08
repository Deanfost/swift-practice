// Basic shape class
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

  override func description() -> Void {
    super.description()
    print("Hello I have been overwritten and have \(self.dimensions) dimensions")
  }
}

var triangle = Triangle(color: "Yellow")
triangle.dimensions = 4
triangle.description()
