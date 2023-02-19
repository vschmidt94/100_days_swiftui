//: [Previous](@previous)

// func args must always be in order

// specify return type
func rollDice() -> Int {
    return Int.random(in: 1...6)
}

let result = rollDice()
print(result)


// if a function is only 1 line of code, `return` can be implied
func rollDice() -> Int {
    Int.random(in: 1...6)
}

// returning multiple datatypes - use tuple
// similar to named tuple in Python
func getUser() -> (firstName: String, lastName: String) {
    (firstName: "Taylor", lastName: "Swift")
}

let user = getUser()
print("Name: \(user.firstName) \(user.lastName)")

let (firstName, lastName) = getUser()
print("Name: \(firstName) \(lastName)")


// functions can be overloaded
func hireEmployee(name: String) { }
func hireEmployee(title: String) { }
func hireEmployee(location: String) { }

// if you want to allow func call without using param name, put _ in front
func isUppercase(_ string: String) -> Bool {
    string == string.uppercased()
}

let string = "HELLO, WORLD"
let result = isUppercase(string)

// above is specific case of more general case
// allows external and internal parameter names.
// first one is external second is internal
func printTimesTables(for number: Int) {
    for i in 1...12 {
        print("\(i) x \(number) is \(i * number)")
    }
}

printTimesTables(for: 5)

// can use default parameters
func printTimesTables(for number: Int, end: Int = 12) {
    for i in 1...end {
        print("\(i) x \(number) is \(i * number)")
    }
}

// arrays have option to keep capacity
chars = ["s", "d"]
chars.removeAll(keepingCapacity: true)

// swift has native error type `Error`
enum PasswordError: Error {
    case short, obvious
}

// use do..throw..catch

let string = "12345"

do {
    let result = try checkPassword(string)
    print("Password rating: \(result)")
} catch PasswordError.short {
    print("Please use a longer password.")
} catch PasswordError.obvious {
    print("I have the same combination on my luggage!")
} catch {
    print("There was an error.")
}

//: [Next](@next)
