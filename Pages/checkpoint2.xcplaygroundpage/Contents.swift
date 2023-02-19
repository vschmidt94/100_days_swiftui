//: [Previous](@previous)

// Create array of strings
var strings = [String]()
strings.append("foo")
strings.append("bar")
strings.append("foo")

// print number of elements in array
print("Array `strings` has \(strings.count) elements: \(strings)")

// print number of unique elements
var stringSet = Set(strings)
print("Array `strings` has \(stringSet.count) elements: \(stringSet)")

//: [Next](@next)
