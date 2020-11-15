/**
 
 # Mini Project 1
 
  Today, you'll be creating a `Vehicle` `struct`.  The `struct` should store information on the
   vehicle's make, model, color, gas milage, type (truck, sedan, etc.), total capacity of the tank, and current fuel level.
 
  The `struct` should include methods that:
 
   - Fill the gas tank up completely
   - Drive a certain number of miles (if it has enough fuel), and deducting the fuel accordingly after the drive.
     The vehicle will not drive if it doesn't have enough fuel (and will print an error message).
 
   As part of the project, I'll be looking for :
    
    - Proper use of git branches and merge requests
    - Proper documentation
    - Proper code style
 
 */

/** This represents a vehicle. **/
struct Vehicle {
    
    var make: String // make of vehicle
    var model: String // model of vehicle
    var color: String // vehicle's color
    var gasMileage: Double // the gas mileage of the vehicle in mpg
    var type: String // type of vehicle
    var capacity: Double // total fuel capacity in gallons
    var currentFuelLevel: Double // current fuel level in gallons
    
    /// Fills the gas tank up to match its capacity
    mutating func fillTankUp() {
        
        currentFuelLevel = capacity
        
        
    }
    
    /// Drives a certain number of miles if possible, updates fuel level if it has enough, otherwise it returns the current fuel level and does not complete the trip
    /// - Parameter miles: miles driven
    /// - Returns: remaining amount of fuel
    mutating func drive(miles: Double) -> Double {
        
        var gallonsNeeded = miles / gasMileage
        if gallonsNeeded > currentFuelLevel {
            
            print("Not enough fuel!")
            return currentFuelLevel
            
        } else {
            
            print("Sure")
            currentFuelLevel = currentFuelLevel - gallonsNeeded
            return currentFuelLevel
        }
    }
}
