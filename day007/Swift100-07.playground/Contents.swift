import UIKit

var str = "Hello, playground"

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
