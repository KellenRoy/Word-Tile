/*:
 ![Make School Banner](./swift_banner.png)
 # Inheritance

 Zoe got promoted AGAIN! She just found out that she's getting assigned three more animals tomorrow: Giraffes, Bees, and... Unicorns! What kind of petting zoo is this, anyways?!

 Before Zoe asks you for three new classes tomorrow, let's rewrite our code to save us some time. Create a class called `Animal`, which will act as our _superclass_ (we'll explain this in a moment). `Animal` should contain both instance variables (`name` and `favoriteFood`, in case you need a reminder). The initializer method should take two arguments that sets the value of both `name` and `favoriteFood`. Our `eat` and `sleep` methods should be exactly the same as the `Tiger` class you wrote in Problem 3.

 */
class Animal {
    // Put your instance variables here

    init(name: String, favoriteFood: String) {
        // put your initializer content here

    }

    func sleep() {
        // complete your sleep function here, noting the change from global to instance variables

    }

    func eat(food: String) {
        // complete your eat function here!

    }
}
/*:

 You might be wondering how this `Animal` class is going to save us any time? After all, we're going to have to write three more classes for Giraffe, Bee, and Unicorn, right?

 Yes – but you might have noticed that all of the animals we've wrote classes for have a few similarities. For one, all animals seem to have a `name` and a `favoriteFood`. They also all seem to have `eat` and `sleep` functions, even though the specific behaviors of the functions might be different. What if we could put together all the similar parts of all animals into one _superclass_, and then write just the unique parts for each animal in its own _subclass_?

 This is the problem that _class inheritance_ in Swift solves for us. A class can actually _inherit_ (or borrow behavior) from another class, like so:

 */
class ExampleSuperclass {
    var message: String

    init(message: String) {
        self.message = message
    }

    func doStuff() {
        print("My message is '\(self.message)'.")
    }

    func sayGoodbye() {
        print("Goodbye!")
    }
}

class ExampleSubclass: ExampleSuperclass {
    var mySecretMessage: String

    override init(message: String) {
        self.mySecretMessage = "Hi! I am a subclass of ExampleSuperclass! :D"
        super.init(message: message)
    }

    override func doStuff() {
        super.doStuff()
        print("My secret message is '\(self.mySecretMessage)'!")
    }
}
/*:

 There's a few different things going on here. First, the subclass definition: `class ExampleSubclass: ExampleSuperclass` – this sets up the inheritance, letting `ExampleSubclass` _inherit_ all the instance variables and methods of `ExampleSuperclass`, getting access to it all. So in this example, `ExampleSubclass` has access to not only its instance variable `secretMessage`, but also `message` from its superclass.

 */
let superclassInstance = ExampleSuperclass(message: "Hello Make School student.")
let subclassInstance = ExampleSubclass(message: "Hi there Make School student. Want to hear a secret?")
/*:

 Next: the `super.init()` call in `ExampleSubclass`'s initializer! The `super` keyword will go up one step in the inheritance tree, letting `ExampleSubclass` access methods written for `ExampleSuperclass`. Here, the superclass initializer is called, setting `message` to `"Hi there Make School student. Want to hear a secret?"`.

 Lastly: the `override` keyword. As the name suggests, this lets you _override_ (or redefine) a method in the superclass of the same name. In this case, `ExampleSuperclass`'s `doStuff()` method prints out `message`'s value. `ExampleSubclass` augments this behavior by printing out the value of `mySecretMessage`, _as well as_ executing `ExampleSuperclass`'s default behavior, by calling `super.doStuff()`. Overriding an initializer similarly takes over the initializer of the superclass – but in this case, you are required to call `super.init()` at some point in the init function.

 - callout(Try it out!): Add calls to the `doStuff` function on both `superclassInstance` and `subclassInstance` in the space below. What do you expect them to output?

 */




/*:

 That was pretty cool. Let's try something else...

 - callout(Try it out!): Add a call to the `sayGoodbye` function on `superclassInstance`. Do you think you can call `sayGoodbye` on `subclassInstance as well? Will they output the same thing? Give it a shot below!

 */




/*:

 - important: `subclassInstance` can use `sayGoodbye` because it borrowed all the methods from `ExampleSuperclass` when `ExampleSubclass` inherited from it!

 # Back to the animals

 Now, let's implement these new ideas for our animals! Modify your `Bear` and `Tiger` classes so that they are subclasses of `Animal`. `Tiger` should inherit fully from the `Animal` class. This means that `Tiger` will automatically contain the `eat` and `sleep` methods defined in `Animal`. To complete the `Tiger` class, all you need to write is an initializer method that takes a name argument and passes it off to the `Animal` initializer, along with a `favoriteFood` of `"meat"`, because remember: all tigers like meat. :-)

 - callout(Hint): Don't forget to use the `super` keyword like in `ExampleSubclass`!

 The `Bear` class should also inherit from the `Animal` class and have a similar initializer to the `Tiger` class, except that it should use a value  of `"fish"` for `favoriteFood` because all bears like fish. However, to capture bears' different sleeping behavior, you'll need to __override__ the `sleep` method so that it prints the correct message (refer to Problem 4 if you need a reminder what the `sleep` method should print).

 */

// Complete the Tiger and Bear subclasses below
class Tiger: Animal {

    init(name: String) {
        // don't forget to correct the call to the superclass initializer!
        super.init(name: "", favoriteFood: "")
    }

}

class Bear: Animal {
    // complete the Bear class here, using the completed Tiger class as an example


    // here, we override the sleep function
    override func sleep() {
        // add in your Bear-specific sleep code here

    }
}

/*:

 - callout(Hint): Don't forget to implement `Bear`'s _initializer_!

 These `Tiger` and `Bear` classes that now inherit from the `Animal` class should have exactly the same behavior as they did in Problem 4. However, you should notice that your code is shorter overall. This is one advantage of using inheritance in object-oriented programming.

 ## Testing

 When you're done, uncomment the below lines of code, and it should compile and output the same thing as before:

     Tigger eats meat
     YUM!!! Tigger wants more meat
     Pooh eats fish
     YUM!!! Pooh wants more fish
     Pooh eats meat
     Pooh hibernates for 4 months

 */

//let tigger = Tiger(name: "Tigger")
//tigger.eat(food: "meat")
//let pooh = Bear(name: "Pooh")
//pooh.eat(food: "fish")
//pooh.eat(food: "meat")

//: [Previous](@previous) | [Next](@next)
