/**
 
 # Assignment
 
 Today's assignment will deal with object-oriented programming (OOP).  In particular, you'll be using a `struct` to create a `Receipt`.  This `Receipt` will hold the information for a purchase of one item (for simplicity's sake).  The docstring is provided below.  Please use a `struct` to complete the assignment.  Information is below.
 
 */


/**
 
 # Step One
 
 Congrats, you've already completed part of step one: clone the repository!  The other part of this step is creating a new _branch_.   Remember, we use branches every time we want to create a new feature or do something new with the code.  The `master` branch is _reserved_ for final, reviewed code that is ready for deployment.  This includes semantic checks (making sure your code works correctly), style checks (making sure it's pretty), and documentation checks (making sure everything is commented and has proper docstrings attached!).  Go ahead and create a new branch called `completed_assignment`.  You'll be working in this branch for the remainder of the assignment.
 
 */


/**
 
 # Step Two
 
 This is the big step!  Please create the `struct` that corresponds to the below docstring.
 
 _Note: Properties should remain uninitialized_
 
 */


/**
 
 # Receipt
 
 Represents a the receipt or invoice for a one-item purchase.
 
 Properties:
    - ID (Int): The receipt ID
    - productName (String): The name of the product purchased
    - productPrice (Double): The price of the product purchased (in USD)
    - isPaid (Bool): Represents whether the purchase has been paid for
 
 */

// TODO


/**
 
 # Step Three
 
 For the final step, I would like you to submit a pull request.  Remember, a pull request is telling me that your code is ready for review and that you believe your code is ready for deployment (i.e. the final version).  Only at this point will I review your code and give you feedback.
 
 */

struct Receipt {
    
    var ID: Int
    var prdouctName: String
    var productPrice: Double
    var isPaid: Bool
    
}
