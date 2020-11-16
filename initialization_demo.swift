/**

 # Introduction
 
 So... what is initialization?  When we "initialize" something, we're giving it some starting ("initial") value.  In
 particular, initialization deals with what a `class` or `struct` looks like just after being created.
 Throughout this file, we'll take a look at how initilization works and how we can use it to our advantage.
 
 */


/**
 
 # 1 - Default `struct` Initializer
 
 By default, `structs` have a default initializer (that you've actually used before without even knowing it!
 If you don't define any other initializer, a `struct` will take arguments for every "uninitialized" variable (all
 variables that you didn't give a value in the beginning, i.e. `var name: String` doesn't have a value, just
 a declared type).
 
 So what's the big takeaway here?  You cannot have uninitialized variables!  Every variable must have some
 value (even if that value is `nil`, or no value).  Variables can't be initialized and given a type, but no value.
 So, let's take a look at the default `struct` initializer.
 
 */

struct PersonOne {
    
    var name: String
    var age: Int
    var job: String
    
}
 
/// Let's initializer a new `PersonOne` object

var personOne: PersonOne = PersonOne(name: "Gavin", age: 19, job: "Student")

/**
 
 As you can see when we create a new `PersonOne` object, we need to provide some information, the
 `name`, `age`, and `job`.  This is because we never gave it a value in our `struct`.  If we now print out
 the values of `name`, `age`, and `job`, you'll see those variables have been automatically assigned.
 
 */

print(personOne.name) // -> Gavin
print(personOne.age)  // -> 19
print(personOne.job)  // -> Student


/// But what if we give one of these values a default value?

struct PersonTwo {
    
    var name: String
    var age: Int
    var job: String = "Student"
    
}

/// The initializations of new `Person` below two objects results in the same thing!

var personTwo1: PersonTwo = PersonTwo(name: "Gavin", age: 19)
var personTwo2: PersonTwo = PersonTwo(name: "Gavin", age: 19, job: "Student")

/**
 
 Because we give `job` a default value of `"Student"`, we don't have to provide it in our initializer, it'll
 automatically use the default value if none is provided.  But, that doesn't mean we can't override the default
 value!
 
 */

var PersonTwo3: PersonTwo = PersonTwo(name: "Gavin", age: 19, job: "TA")

/**
 
 So even though there's a default value of `"Student"`, we can override that value to a new value of our
 choice just by providing it in the initializer!  Using a default value like this is very common and we'll see more
 below.
 
 _Note: only_ `structs` _have these default initializers, _`classes` _do not have these by default._
 
 */


/**
 
 # 2 - Custom Initializers
 
 When using a `class` (or if you just want extra functionality with `structs`), we may want to do have a
 custom initializer!  Whether we want to do something special when creating the object (like generating a
 random number), or just want more control, custom initializers are very useful for us!  Let's see how
 we can make our own initializer.

 Initializers are defined using the `init` keyword and can take arguments just like a method!  Similarly to
 methods, you can make new variables, call functions, etc., the sky's the limit!
 
 The example below will "recreate" the default initializer for `structs` in a `class`.
 
 */

class PersonThree {
    
    var name: String
    var age: Int
    var job: String
    
    init(name: String, age: Int, job: String) {
        
        self.name = name
        self.age = age
        self.job = job
        
    }
    
}

/**
 
 So this example takes three arguments: `name`, `age`, and `job`, and assigns the properties `name`,
 `age`, and `job` to the arguments.  So what's the deal with `self`?  Well since we have the arguments
 named the same as the properties, we need to specify that we're trying to set the property equal to the
 argument.  `self.name` represents the `class` property, whereas `name` represents the argument that
 the programmer inputs.
 
 */

var personThree: PersonThree = PersonThree(name: "Gavin", age: 19, job: "Student")

print(personThree.name) // -> Gavin
print(personThree.age)  // -> 19
print(personThree.job)  // -> Student

/**
 
 So this is neat, and gives us lots of options to do custom things.  Let's see an example where we do other
 things in the initializer as well!
 
 */

import UIKit

struct PersonFour {
    
    var name: String
    var age: Int
    var job: String
    var userID: Int
    
    init(name: String, age: Int, job: String) {
        
        self.name = name
        self.age = age
        self.job = job
        
        self.userID = UUID()
        
    }
    
}

var personFour: PersonFour = PersonFour(name: "Gavin", age: 19, job: "Student")

print(personFour.name)  // -> Gavin
print(personFour.age)   // -> 19
print(personFour.job)   // -> Student
print(personFour.userID) // -> 8D31B96A-02AC-4531-976F-A455686F8FE2

/**
 
 In this example, you can see not only that we can set up the `name`, `age`, and `job`, but we can also
 do things that don't have to do with the arguments we input into the initializer.  For example, we use the
 `UUID()` function which creates a random user identifer and set that equal to the `userID` property.
 
 So, if there's something you need to do, calculate, or set when an object is first created (whether it's the
 background color of the button, what it'll do when pressed, or the text that should be displayed), initializers
 are the way to do it!
 
 */


/**
 
 # 3 - Multiple Initializers
 
 Finally, we'll talk about how we can have multiple initializers.  Sometimes, you may want two different
 ways to initialize something, depending on what the user inputs!  The good news is: we can just add another
 `init()`!
 
 Here's an example: let's say we have a `struct` which represents a temperature in celcius.  What if we
 want a way to create a new `Celcius` object by providing a temperature in fahrenheit or kelvin?  Both of
 these need different calculations!  Let's take a look.
 
 */

struct Celsius {
    
    var temperatureInCelsius: Double
    
    init(fromFahrenheit fahrenheit: Double) {
        temperatureInCelsius = (fahrenheit - 32.0) / 1.8
    }
    
    init(fromKelvin kelvin: Double) {
        temperatureInCelsius = kelvin - 273.15
    }
    
    init(_ celsius: Double) {
        temperatureInCelsius = celsius
    }
}

/**
 
 This example gives three initializers.  The first allows us to convert from fahrenheit to celcius.  The second
 initializer allows us to convert from kelvin.  The third initializer allows us to simply give a temperature in
 celcius.  We know this is the default because of the `_`, meaning we don't need to specify that it's in celcius,
 only if it's not.  Let's see how we can use these.
 
 */

// Creates a `Celcius` object with a value of 100.0 C
var temp1 = Celcius(100.0)
// Creates a `Celcius` object with a value of 373.15 kelvin, which is converted
// to 100.0 C
var temp2 = Celcius(fromKelvin: 373.15)
// Creates a `Celcius` object with a value of 212.0 fahrenheit, which is
// converted to 100.0 C
var temp3 = Celcius(fromFahrenheit: 212.0)

/**
 
 Each of these examples are `Celcius` objects and all of them will have a property
 `temperatureInCelsius` which is equal to `100.0`.  Even though we had different ways to initialize
 these objects, they all end up with the same values.
 
 */


/**
 
 # Conclusion
 
 So that's initialization!  It's just how we give objects their values.  If you have any questions, please feel
 free to reach out!  There's no code you have to submit, but make sure you fully understand all of this so we
 can practice and continue!
 
 */
