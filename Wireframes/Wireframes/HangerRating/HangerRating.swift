//
//  HangerRating.swift
//  Wireframes
//
//  Created by Gavin on 12/13/20.
//

import SwiftUI
import Foundation

// Custom error for invalid ratings
enum RatingError: Error {
    case ratingOutOfBounds
}


struct HangerRating: View {

    
    // MARK: Struct attributes
    
    /// The rating to be represented by the view
    @State var rating: Double
    
    
    // MARK: Initializer and error handling
    
    init(_ rating: Double) throws {
        
        /// Ensure the rating is a valid value
        guard rating <= 5.0 && rating >= 0.0 else {
            throw RatingError.ratingOutOfBounds
        }
        
        self._rating = State(initialValue: rating)
        
    }
    
    
    // MARK: SwiftUI View
    var body: some View {
        
        HStack {
            
            ForEach(1..<6) {number in
                genHanger(rating: self.rating, index: number)
            }
            
        }
        
    }
    
    
    /// Generate the particular hanger required to build the view.
    /// - Parameters:
    ///   - rating: The final rating to be represented (between [0.0, 5.0])
    ///   - index: The index in the loop (loop indexed at 1)
    /// - Returns: The Hanger object to be displayed
    func genHanger(rating: Double, index: Int) -> some View {
        
        if rating - Double(index) + 1 > 0.5 {
            return AnyView(Hanger_Selected())
        } else {
            return AnyView(Hanger_Deselected())
        }
        
    }
    
    
}

struct HangerRating_Previews: PreviewProvider {
    static var previews: some View {
        try? HangerRating(3.6)
    }
}
