/*:
 ![Make School Banner](./swift_banner.png)
 # Favorite Foods

 Great! Now, you'll write another function and use an if-statement. We'll also use a variable to keep track of a `Tiger`'s favorite food. The variable is named `favoriteFood` and is already set up for you in the starter code below.

 - important: We refer to the `favoriteFood` variable as being a "global" variable, since it is in the _outermost scope_ of the program – as opposed to it being inside a function or another statement that has curly braces. If the variable was defined inside a function, we would say it's "in the function's scope". If it was declared inside an if-statement, it would be "in the if-statement's scope". Furthermore, if it was inside a class, it's "in the class' scope." We'll talk more about that last one later.

    A variable is only available to code within it's scope and will be removed (deallocated) once the scope ends. So for instance, if you declare a variable within a function, it is deleted when you exit that function. If you declare a variable in the global scope, it exists forever.

 - callout(Challenge): Write a function named `eat` that takes two arguments: `name` and `food`. This function should print "`<name> eats <food>`" each time it's called.

    But wait – there's more! The `eat` function should check if the food argument is equal to the global variable `favoriteFood`. If the values are equal, the function should then also print "`YUM!!! <name> wants more <food>`". _If they are not equal, the eat function should call the sleep function you wrote in Problem 1 (you can copy it from the previous page) and pass the value of `name` as an argument to sleep._

 This function call:

     eat(name: "Tigger", food: "meat")
     eat(name: "Tigger", food: "kibble")

 should print this output exactly:

    Tigger eats meat
    YUM!!! Tigger wants more meat
    Tigger eats kibble
    Tigger sleeps for 8 hours

 */
let favoriteFood = "meat"

func sleep(name: String) {
 print("\(name) sleeps for 8 hours")
}

func eat(name: String, food: String) {
print("\(name) eats \(food)")
    if food == favoriteFood {
        print("YUM!!! \(name) wants more \(food)")
    }
    else{
        sleep(name: name)
    }
}

eat(name: "Tigger", food: "meat")
eat(name: "Tigger", food: "kibble")

//: [Previous](@previous) | [Next](@next)
