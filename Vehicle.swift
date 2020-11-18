/**

 Create a new Vehicle `struct`.
 
 Have 4-5 properties of the Vehicle
 
 Have 2-3 methods for the Vehicle
 
 Make a custom initializer for the Vehicle.
 
 */


/// Represents a vehicle
struct Vehicle {
    
    var make: String /// the make of the vehicle
    var model: String /// the model of the vehicle
    var color: String /// the color of the vehicle
    var type: String /// the type of the vehicle
    var numDoors: Int /// the number of doors the vehicle has
    
    init(make: String, model: String, color: String, numDoors: Int) {
        
        self.make = make
        self.model = model
        self.color = color
        self.type = type
        self.numDoors =  numDoors
        
    }
    
    /// Plays a song of your choice
    /// - Parameter song: The song to be played
    func playSong(song: String) {
        
        print("Playing \(song)!")
        
    }
    
    /// Drives the vehicle
    /// - Parameter miles: the number of miles to be driven
    func drive(miles: Double) {
        
        print("Driving \(miles)!")
        
    }
    
    /// Honks at another vehicle
    func honk() {
        
        print("MOVE ALREADY @#$@%#$%@#!")
        
    }
    
    
}



