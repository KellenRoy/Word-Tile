/*:
 ![Make School Banner](./swift_banner.png)
 # Object-Oriented Programming: An Introduction
 
 In this tutorial, we're going to learn about _Object-Oriented Programming_ in Swift. What is that? It's a _programming paradigm_ based on the concept of "objects" – things that contain data, and methods that perform operations on those data.
 
 That sounds pretty vague. But worry not! We will start what we already know in Swift – namely, functions, variables, etc. – and build our object-oriented program from there. We've been hinting at it throughout the course -- it's time to dive right in!
 
 - callout(Challenge): First, write a function named `sleep` that takes an argument `name`. This function should print "`<name> sleeps for 8 hours`" each time it's called. Be sure to print this exact format.
 
 This function call:
 
     sleep(name: "Tigger")
 
 should print this output exactly:
 
     Tigger sleeps for 8 hours
 
 To check your code, you can bring up the console by pressing `command+shift+y`. Your output should get printed there!
 
 */

func sleep(name: String) {
    print("\(name) sleeps for 8 hours")
}

sleep(name: "Tigger")

/*:
 - note: When you're done, copy the contents of your completed sleep function, so we can bring it over to the next section.
 */

//: [Next](@next)
