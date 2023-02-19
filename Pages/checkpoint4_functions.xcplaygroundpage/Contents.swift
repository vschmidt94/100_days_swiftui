//: [Previous](@previous)

// write func for sqrt
// accept integer 1..10_000
// throw outOfBounds error if > 10_000
// only consider integer sq roots
// if not integer sq root, throw noIntegerRoot

enum SqRootError: Error {
    case outOfBounds, noIntegerSqRoot
}

func mySqRt(num: Int) throws -> Int {
    if num < 0 || num > 10_000 { throw SqRootError.outOfBounds }
    
    var min = 0
    var max = 100
    var x: Int, squared: Int
   
    while max - min > 2 {
        x = (min + max) / 2
        squared = x * x
        if squared == num { return x }
        else if squared < num {
            // move bracket higher
            min = x
        }
        else {
            // move bracket lower
            max = x
        }
    }
    throw SqRootError.noIntegerSqRoot
}

for i in -1...100 {
    do {
        let x = try mySqRt(num: i)
        print("Square Root of \(i) is \(x)")
    } catch SqRootError.outOfBounds {
        print("\(i) is out of bounds")
    } catch SqRootError.noIntegerSqRoot {
        print("\(i) has no integer root")
    }
}
//: [Next](@next)
