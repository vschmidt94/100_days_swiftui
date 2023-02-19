//: [Previous](@previous)
var fizz: String
var buzz: String
for i in 1...100 {
    fizz = i.isMultiple(of: 3) ? "Fizz" : ""
    buzz = i.isMultiple(of: 5) ? "Buzz" : ""
    var output: String = fizz + buzz
    output = output.count > 0 ? output : String(i)
    print(output)
}

//: [Next](@next)
