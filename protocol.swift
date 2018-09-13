/* PROTOCOLS */
// https://docs.swift.org/swift-book/GuidedTour/GuidedTour.html#ID466

// Bascially an interface
protocol ExampleProtocol {
    var simpleDescription: String { get }
    mutating func adjust()
}

// Implementing an protocol
class SimpleClass: ExampleProtocol {
    var simpleDescription: String = "A very simple class."
    var anotherProperty: Int = 69105
    func adjust() {
        simpleDescription += "  Now 100% adjusted."
    }
}
var a = SimpleClass()
a.adjust()
let aDescription = a.simpleDescription

struct SimpleStructure: ExampleProtocol {
    var simpleDescription: String = "A simple structure"
    mutating func adjust() {
        simpleDescription += " (adjusted)"
    }
}
var b = SimpleStructure()
b.adjust()
let bDescription = b.simpleDescription

// Note that the 'mutating' keyword marks the signature of a method that can
// mutate the data in a class

// Use the 'extension' keyword to extend an existing type
extension Int: ExampleProtocol {
    var simpleDescription: String {
        return "The number \(self)"
    }
    mutating func adjust() {
        self += 42
    }
}
print(7.simpleDescription)

// Note that you can also use protocols like interfaces in the sense that
// you can pass objects that conform as the protocol type
