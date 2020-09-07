//: [Previous](@previous)

import Foundation

class Person {
    let name: String
    let surname: String
    
    init(name: String, surname: String) {
        self.name = name
        self.surname = surname
    }
}

class Book {
    let title: String
    let pageCount: Int
    let authors: [Person]
    
    init(title: String, pageCount: Int, authors: [Person]) {
        self.title = title
        self.pageCount = pageCount
        self.authors = authors
    }
}

let authors: [Person] = [
    .init(name: "Erich", surname: "Gamma"),
    .init(name: "Richard", surname: "Helm"),
    .init(name: "Ralph", surname: "Johnson"),
    .init(name: "John", surname: "Vlissides")
]
let book = Book(title: "Design Patterns: Elements of Reusable Object-Oriented Software",
                pageCount: 383,
                authors: authors)
print(book)

extension Person: CustomStringConvertible {
    var description: String {
        return "\(name) \(surname)"
    }
}

print(authors)

extension Book: CustomStringConvertible {
    var description: String {
        return """
        --- --- ---
        Book's title: \(title)
        Written by: \(authors)
        Total page count: \(pageCount)
        --- --- ---
        """
    }
}

print(book)
