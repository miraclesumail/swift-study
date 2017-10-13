enum HTTPResponse {
    case ok
    case error(Int)
}

let lastThreeResponses: [HTTPResponse] = [.ok, .ok, .error(404)]
let hadError = lastThreeResponses.contains { element in
    if case .error = element {
		return true
    } else {
        return false
    }
}

print(hadError)

//判断是否包含

import Foundation

let students = ["Kofi", "Abena", "Aeter", "Kweku", "Akosua"]
if let i = students.index(where: { $0.hasPrefix("A") }) {
    print("\(students[i]) starts with 'A'!")
}

let names = ["Chris", "Alex", "Ewa", "Barry", "Daniella"]

func backward(_ s1: String, _ s2: String) -> Bool {
    return s1 > s2
}
var reversedNames = names.sorted(by: backward)
// reversedNames is equal to ["Ewa", "Daniella", "Chris", "Barry", "Alex"]

reversedNames = names.sorted(by: { (s1: String, s2: String) -> Bool in return s1 > s2 } )

let digitNames = [
    0: "Zero", 1: "One", 2: "Two",   3: "Three", 4: "Four",
    5: "Five", 6: "Six", 7: "Seven", 8: "Eight", 9: "Nine"
]
let numbers = [16, 58, 510]

let strings = numbers.map { (number) -> String in
    var number = number
    var output = ""
    repeat {
        output = digitNames[number % 10]! + output
		print(number)
        number /= 10
    } while number > 0
    return output
}

print(strings)

