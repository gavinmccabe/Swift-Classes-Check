/**
 
 # Mini Project 1
 
  Today, you'll be creating a `Vehicle` `struct`.  The `struct` should store information on the
   vehicle's make, model, color, gas milage, type (truck, sudan, etc.), total capacity of the tank, and current fuel level.
 
  The `struct` should include methods that:
 
   - Fill the gas tank up completely
   - Drive a certain number of miles (if it has enough fuel), and deducting the fuel accordingly after the drive.
     The vehicle will not drive if it doesn't have enough fuel (and will print an error message).
 
   As part of the project, I'll be looking for :
    
    - Proper use of git branches and merge requests
    - Proper documentation
    - Proper code style
 
 */

struct Vehicle {
    
    var make: String
    var model: String
    var color: String
    var gasMileage: Double
    var type: String
    var capacity: Double
    var currentFuelLevel: Double
    
    mutating func fillTankUp() {
        
        currentFuelLevel = capacity
        
        
    }
    
    mutating func drive(miles: Double) -> Double {
        
        var gallonsNeeded = miles/gasMileage
        if gallonsNeeded > currentFuelLevel {
            
            print("Not enough fuel!")
            return currentFuelLevel
            
        }
        else {
            
            print("Sure")
            currentFuelLevel = currentFuelLevel - gallonsNeeded
            return currentFuelLevel
        }
        
        
        
    }
    
    
    
}
