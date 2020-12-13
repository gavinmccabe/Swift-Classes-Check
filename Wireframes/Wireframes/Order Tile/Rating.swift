//
//  Rating.swift
//  Wireframes
//
//  Created by Jaymin Ding on 12/13/20.
//

import SwiftUI

struct Rating: View {
    @State var rating: String
    var body: some View {
        HStack(){
            
            Text(rating)
                .foregroundColor(Color(#colorLiteral(red: 0.6431372549, green: 0.6705882353, blue: 0.6509803922, alpha: 1)))
            
        }
    }
}

struct Rating_Previews: PreviewProvider {
    static var previews: some View {
        Rating(rating: "4.5")
    }
}
