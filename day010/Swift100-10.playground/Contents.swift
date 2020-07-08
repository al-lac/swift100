import UIKit

var str = "Hello, playground"

class Dog {
    var name: String
    var breed: String

    init(name: String, breed: String) {
        self.name = name
        self.breed = breed
    }
}

let poppy = Dog(name: "Poppy", breed: "Poodle")


class Poodle: Dog {
    init(name: String) {
        super.init(name: name, breed: "Poodle")
    }
}


class Dog2 {
    func makeNoise() {
        print("Woof!")
    }
}

final class Poodle2: Dog2 {
    override func makeNoise() {
        print("Yip!")
    }
}

let poppy2 = Poodle2()
poppy2.makeNoise()


class Singer {
    var name = "Taylor Swift"
}

var singer = Singer()
print(singer.name)

var singerCopy = singer
singerCopy.name = "Justin Bieber"

print(singer.name)


class Person {
    var name = "John Doe"

    init() {
        print("\(name) is alive!")
    }

    func printGreeting() {
        print("Hello, I'm \(name)")
    }
    
    deinit {
        print("\(name) is no more!")
    }
}

for _ in 1...3 {
    let person = Person()
    person.printGreeting()
}

class Singer2 {
    var name = "Taylor Swift"
}

let taylor = Singer2()
taylor.name = "Ed Sheeran"
print(taylor.name)



