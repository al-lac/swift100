import UIKit

var str = "Hello, playground"

let driving = { (place: String) in
    print("I'm going to \(place) in my car")
}

driving("London")

let drivingWithReturn = { (place: String) -> String in
    return "I'm going to \(place) in my car"
}

let message = drivingWithReturn("London")
print(message)

let driving2 = {
    print("I'm driving in my car")
}

func travel(action: () -> Void) {
    print("I'm getting ready to go.")
    action()
    print("I arrived!")
}

travel(action: driving2)


travel() {
    print("I'm driving in my tesla")
}

travel {
    print("I'm driving in my model 3")
}


func travel2(action: (String) -> Void) {
    print("I'm getting ready to go.")
    action("London")
    print("I arrived!")
}

travel2 { (place: String) in
    print("I'm going to \(place) in my car")
}


func travel3(action: (String) -> String) {
    print("I'm getting ready to go.")
    let description = action("London")
    print(description)
    print("I arrived!")
}

travel3 { (place: String) -> String in
    return "I'm going to \(place) in my car"
}


travel3 { (place: String) -> String in
    return "I'm going to \(place) in my car"
}

travel3 { place -> String in
    return "I'm going to \(place) in my car"
}

travel3 { place in
    return "I'm going to \(place) in my car"
}

travel3 { place in
    "I'm going to \(place) in my car"
}

travel3 {
    "I'm going to \($0) in my car"
}


func travel4(action: (String, Int) -> String) {
    print("I'm getting ready to go.")
    let description = action("London", 60)
    print(description)
    print("I arrived!")
}

travel4 {
    "I'm going to \($0) at \($1) miles per hour."
}


func travel5() -> (String) -> Void {
    return {
        print("I'm going to \($0)")
    }
}

let result = travel5()
result("London")

let result2 = travel5()("London")


func travel6() -> (String) -> Void {
    return {
        print("I'm going to \($0)")
    }
}

let result3 = travel6()
result3("London")

func travel7() -> (String) -> Void {
    var counter = 1

    return {
        print("\(counter). I'm going to \($0)")
        counter += 1
    }
}

let result4 = travel7()
result4("London")

result4("London")
result4("London")
result4("London")
