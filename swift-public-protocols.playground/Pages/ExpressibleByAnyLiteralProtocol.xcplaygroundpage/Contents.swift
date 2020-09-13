import Foundation

struct CustomNumber {
    let value: Int?
    let isEven: Bool?
}

//Now if we want to create an array of CustomNumbers we would write something like this:

let customNumbers: [CustomNumber] =
[
    .init(value: 4, isEven: true),
    .init(value: 24, isEven: true),
    .init(value: 65, isEven: false),
    .init(value: 44, isEven: true)
]


//ExpressibleByIntegerLiteral

extension CustomNumber: ExpressibleByIntegerLiteral {
    init(integerLiteral value: Int) {
        self.value = value
        self.isEven = self.value?.isMultiple(of: 2)
    }
}

let customNumbersWithIntProtocol: [CustomNumber] = [1, 13, 22, 56, 28]

print(customNumbersWithIntProtocol)

extension CustomNumber: ExpressibleByStringLiteral {
    init(stringLiteral value: String) {
        self.value = Int(value)
        self.isEven = self.value?.isMultiple(of: 2)
    }
}

let customNumbersWithStringProtocol: [CustomNumber] = ["1", "13", "23", "44"]
print(customNumbersWithStringProtocol)
