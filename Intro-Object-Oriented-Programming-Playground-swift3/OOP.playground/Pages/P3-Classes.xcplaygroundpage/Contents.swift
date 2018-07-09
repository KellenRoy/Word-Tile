/*:
 ![Make School Banner](./swift_banner.png)
 # Introduction to Classes

 Your friend Zoe, the zookeeper, has seen the code you wrote, and thinks it could help her. She says that the eat function you wrote in Problem 2 perfectly describes tigers. Let's write a small program to help Zoe keep track of her tigers and their eating and sleeping habits. This time we'll make a `Tiger` class! But first, let's talk about what classes and objects are...

 _Classes_ are the main way in which you can encapsulate (or group together) different variables and functions, as being part of one single _object_. _Classes_ create a blueprint for outputting new objects (we'll talk about objects in just a moment)! You can declare a class like this:

 */
class Example {
    var myVariable: String

    init() {
        self.myVariable = "Make School learns Object-Oriented Programming!"
    }

    func myMethod() {
        print("I am an object of type Example and I have a String instance variable containing \(self.myVariable)!")
    }
}
/*:

 - important: The keyword `self` refers to the current object's scope. Inside of the initializer (and also inside any functions you write in your class), you refer to your class-scope variables via the `self.myVariable` syntax. This signifies that that variable is unique to the _instance_ of the class – which means that there are separate `myVariable`s for _each_ instance of the class that you _instantiate_ (or create).

 # What's going on?

 The above code creates a new class called `Example`. This class has:

 - a single _instance variable_ called `myVariable`
 - a _default initializer_ -- the `init` thing that looks like a function but does not have the `func` keyword
 - a function called `myMethod` that prints out the value of `myVariable`

 
 - important: We generally refer to functions that belong to a class as "methods". The syntax is the same but we call them using that "dot-syntax" that you've seen a few times before.

 # Initializers and creating new objects from a class

 Now that we have defined the `Example` class, we can use it to create new _objects_ and save them to variables! These objects belong to a new, custom data type called `Example`. _Objects_ represent a living piece of data. You can modify their properties and call functions on them.

 To create a new object, we put the class name followed by parentheses. This calls the _default initializer_ (that `init()` block of code that looks like a function). _Initializers_ are used to set the values of all the variables associated with a class. As you can see above, it sets `myVariable` to `"Make School learns Object-Oriented Programming!"`.

 - important: Initializers _must_ set all of the object's variables. You _will_ get an error if you do not set them all in the intializer!

 */
let objectCreatedFromExample = Example()
let anotherExampleObject = Example()
/*:

 # Object properties

 We can access an object's _properties_ (the variables that belong to it) with dot syntax.

 - note: We call variables defined in a class _instance variables_ because they belong to a specific _instance_ (or object) of the class. The words _instance_ and _object_ are interchangable!

 */
objectCreatedFromExample.myVariable
anotherExampleObject.myVariable
/*:

 Both object's `myVariable` property currently contain `"Make School learns Object-Oriented Programming!"`. What happens if we change one of them? Do both change? We'll use dot syntax with an assignment operator (`=`) to update it as if it were a normal variable.

 - important: You'll notice that in the above example, `myVariable` was set to the value `"Make School learns Object-Oriented Programming!"` inside of the `init()` function, or the initializer. Because `myVariable` was declared with `var`, you can update its value for _each_ of your instances!

 */
objectCreatedFromExample.myVariable = "Object-oriented Programming with Make School is great!"
objectCreatedFromExample.myVariable
anotherExampleObject.myVariable
/*:

 We just changed `myVariable` on `objectCreatedFromExample`! `objectCreatedFromExample`'s `myVariable` and `anotherExampleObject`'s `myVariable` now have totally different values!

 - important: Each object lives independently in memory. When you create two `String`s, they can hold different values -- same with objects created from custom classes. Each one is independent and can hold different data!

 
 - callout(Challenge): Update each objects variable to contain new values and print them out!

 */





/*:

 # Methods

 Functions created within classes are called _methods_. They are called on an instance (object) using the same dot syntax that properties use!

 */
objectCreatedFromExample.myMethod()
anotherExampleObject.myMethod()
/*:

 These method calls should have printed out a message to the console below. Methods can do anything functions can do, they just need to be called with dot syntax on an instance (object). They can have parameters and return values and are defined with the normal function syntax.

 # Passing data into initializers

 You can also provide initializers that take in arguments, just like function parameters.

 */
class AnotherExample {
    let myVariable: String

    init(value: String) {
        self.myVariable = value
    }
}
/*:

 Now, you can initialize your class like this:

 */
let AnotherExampleObject = AnotherExample(value: "Woah! OOP is pretty powerful!")
AnotherExampleObject.myVariable
/*:

 and the `myVariable` for _that particular instance_ of `AnotherExample` will be set to `"Woah! OOP is pretty powerful!"`.

 - important: Every parameter passed into an intializer needs a parameter label by default! This is different from functions which skip the first parameter label! Look at the line above, `value` is the only parameter but it needs a label when you call it.

 
 - note: `AnotherExample`'s `myVariable` was declared with `let`, not `var`. You will not be able to update it on any instance of `AnotherExample` like you can on instances of `Example`!

 # Back to Tigers!

 - callout(Challenge): We have provided you with an unfinished `Tiger` class below. When completed, this class should contain two instance variables: `name` and `favoriteFood` (both with type `String`).  This class should also contain `eat` and `sleep` methods similar to the functions you wrote in Problems 1 and 2 (you can copy them from the previous page), but they need to be modified slightly.

    Instead of taking a tiger's `name` as an argument, the `sleep` method should use the `name` _instance variable_ when it prints "`<name> sleeps for 8 hours`".  Similarly, the `eat` method should use the `name` _instance variable_, but should take a `food` argument, because a tiger doesn't know what food it's going to eat until a zookeeper feeds it.

    There's one more method we need to write to complete the `Tiger` class: the _initializer_. This should take a `name` argument and set the tiger's `name` instance variable to the value given. The initializer also sets the `favoriteFood` instance variable to `"meat"` because all tigers like meat. Once finished, we can initialize a new `Tiger` instance and call the `eat` method on it!

 */

class Tiger {
    // put your instance variables here!


    init(name: String) {
        // put your initializer content here

    }

    func sleep() {
        // complete your sleep function here, noting the change from global to instance variables

    }

    func eat(food: String) {
        // complete your eat function here!

    }
}

let tigger = Tiger(name: "Tigger")
tigger.eat(food: "meat")
tigger.eat(food: "kibble")

/*:
 # Testing

 When you're done, check your output. It should read as follows:

    Tigger eats meat
    YUM!!! Tigger wants more meat
    Tigger eats kibble
    Tigger sleeps for 8 hours

 Copy your `Tiger` class so you can use it in the next section.

 */
//: [Previous](@previous) | [Next](@next)
