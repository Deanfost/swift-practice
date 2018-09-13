/* ERRORS IN SWIFT */
// https://docs.swift.org/swift-book/GuidedTour/GuidedTour.html#error-handling

// You can represent errors with any type that adopts the Error protocol
enum PrinterError: Error {
    case outOfPaper
    case noToner
    case onFire
}

// Use 'throw' to throw an error
func send(job: Int, toPrinter printerName: String) throws -> String {
    if printerName == "Never Has Toner" {
        throw PrinterError.noToner
    }
    return "Job sent"
}

// Use a do-catch to handle possible errors
// Mark code that can throw an error with 'try'
do {
    let printerResponse = try send(job: 1040, toPrinter: "Bi Sheng")
    print(printerResponse)
} catch {
    print(error)
}

// Multiple cases
do {
    let printerResponse = try send(job: 1440, toPrinter: "Gutenberg")
    print(printerResponse)
} catch PrinterError.onFire {
    print("I'll just put this over here, with the rest of the fire.")
} catch let printerError as PrinterError {
    print("Printer error: \(printerError).")
} catch {
    print(error)
}

// Handling errors using try?
// If there is an error, the error is discarded, and the value returned is 'nil'
let printerSuccess = try? send(job: 1884, toPrinter: "Mergenthaler")
let printerFailure = try? send(job: 1885, toPrinter: "Never Has Toner")

// You can use 'defer' to write 'cleanup code', which will be executed right
// before the function returns, regardless of whether the function throws an error
var fridgeIsOpen = false
let fridgeContent = ["milk", "eggs", "leftovers"]

func fridgeContains(_ food: String) -> Bool {
    fridgeIsOpen = true
    defer {
        fridgeIsOpen = false
    }

    let result = fridgeContent.contains(food)
    return result
}
fridgeContains("banana")
print(fridgeIsOpen)
