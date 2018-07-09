/*:
 ![Make School Banner](./swift_banner.png)
 # Even more animals!

 Today is the day! Zoe now keeps track of giraffes, bees, AND unicorns, so she needs 3 more classes of animals added to the program. Luckily, we're prepared because we have a general Animal class with typical animal behaviors.

 - note: Copy your full `Animal`, `Tiger`, and `Bear` classes from the previous page

 */

// Copy your Animal class here
class Animal {

    init(name: String, favoriteFood: String) {
        // put your initializer content here

    }

    func eat(food: String) {

    }

    func sleep() {

    }
}

// Copy your Tiger class here
class Tiger: Animal {

}

// Copy your Bear class here
class Bear: Animal {

}

/*:

 # Unicorns

 We're going to create 3 more subclasses of `Animal`: `Bee`, `Giraffe`, and `Unicorn`. Each class should set their own value for `favoriteFood`, and should override the `sleep` or `eat` methods, or both as appropiate.

 - callout(Challenge): Implement the `Unicorn` class as a subclass of `Animal`. In case you didn't know, unicorns love to eat marshmallows and they sleep in clouds. In other words, their `favoriteFood` is `"marshmallows"` and calling the `sleep` method on a `Unicorn` should print `"<name> sleeps in a cloud"`. We've given you some hints in the provided code below.
 */

// Implement the Unicorn class here as a subclass of Animal
// Hint: Implement the initializer method and override the sleep method
class Unicorn: Animal {

    init(name: String) {
        // don't forget to correct the call to the superclass initializer!
        super.init(name: "", favoriteFood: "")
    }

    override func sleep() {
        // your overridden sleep code...

    }
}

/*:

 # Giraffes

 - callout(Challenge): Implement the `Giraffe` class as a subclass of `Animal`. Giraffes are vegetarian, so they only eat leaves. If you feed `"leaves"` to a `Giraffe`, they will happily tell you `"YUM!!! <name> wants more leaves"` after eating them (just like how `Tiger`s respond to `"meat"`) _and then `sleep`_. However, if you feed them anything else, they will shout `"YUCK!!! <name> will not eat <food>"` to let you know they don't like what you fed them. You'll need to override the `eat` method for the Giraffe class to model this behavior. In some cases, you might be able to call the superclass's implementation of the `eat` method to avoid having to recode the parts of this behavior that's similar to your generic `Animal` class.

 */

// Implement the Giraffe class here as a subclass of Animal
// Hint: Implement the initializer method and override the eat method
class Giraffe: Animal {

    init(name: String) {
        // don't forget to correct the call to the superclass initializer!
        super.init(name: "", favoriteFood: "")
    }

    override func eat(food: String) {
        // check here if you don't like the food you were given...
        // don't forget a call to the superclass eat function!
    }
}


/*:

 # Bees

 - callout(Challenge): Implement the `Bee` class as a subclass of `Animal`. Bees only eat pollen. If they are fed pollen _then print "YUM!!! <name> wants more pollen" and call `sleep`_. If fed anything else, the bee will complain in the same way as giraffes do. Additionally, bees never sleep, so if you call the `sleep` method on the Bee class, it should print `"<name> never sleeps"` instead of the standard sleep behavior.
 */

// Implement the Bee class here as a subclass of Animal
// Hint: Implement the initializer method and override the sleep and eat methods
class Bee: Animal {

}


/*:
 ## Testing

 This time, you'll be in charge of writing your own test code! It should output exactly this:

     Tigger eats meat
     YUM!!! Tigger wants more meat
     Pooh eats fish
     YUM!!! Pooh wants more fish
     Pooh eats meat
     Pooh hibernates for 4 months
     Rarity eats marshmallows
     YUM!!! Rarity wants more marshmallows
     Rarity sleeps in a cloud
     YUCK!!! Gemma will not eat meat
     Gemma eats leaves
     YUM!!! Gemma wants more leaves
     Gemma sleeps for 8 hours
     YUCK!!! Stinger will not eat ice cream
     Stinger eats pollen
     YUM!!! Stinger wants more pollen
     Stinger never sleeps

 - callout(Hint): The zoo currently has one animal of each type. There is:
    - A `Tiger` named Tigger
    - A `Bear` named Pooh
    - A `Unicorn` named Rarity
    - A `Giraffe` named Gemma
    - A `Bee` named Stinger

 */




//: [Previous](@previous) | [Next](@next)
