/**
 
 # Assignment
 
 Today's assignment will deal with object-oriented programming (OOP).  In particular, you'll be creating a couple
 of utility methods for our `Receipt` `struct`.  You will see the docstrings below.
 
 Please ensure to use  a new branch and submit a pull request when complete.
 
 */



struct Receipt {
    
    var ID: Int  // The ID of the receipt
    var productName: String  // The name of the product being purchased
    var productPrice: Double  // The price of the product being purchased
    var isPaid: Bool  // Represents whether the receipt is paid already
    

    /// Pays the receipt with a given balance, returning the remaining balance and marking the receipt as
    /// paid.  If the price of the product is larger than the available balance, do not pay the receipt and
    /// return the original balance.
    ///
    /// - Parameter balance: The current balance of a bank account.
    /// - Returns: The remaining balance after paying the receipt.
    
    // TODO: Write the method here!
    
    
    /// Starts a sale on the product listed in the receipt.  Changes the product's price to reflect the sale.
    /// - Parameter discount: The percent discount to be applied.  For example, `10.0` would
    /// represent a discount of 10%.
    /// - Returns: The product price after the sale.
     
    // TODO: Write the method here
    
    
    
    
}
