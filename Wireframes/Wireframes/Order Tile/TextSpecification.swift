//
//  TextSpecification.swift
//  Wireframes
//
//  Created by Jaymin Ding on 12/13/20.
//

import SwiftUI

struct TextSpecification: View {
    @State var numItems: Int
    @State var date: String
    @State var time: String
    @State var address: String
    var body: some View {
        VStack(){
            Spacer()
                .frame(height: 20)
            HStack(){
                Image(systemName: "square.fill")
                    .foregroundColor(Color(#colorLiteral(red: 0.7607843137, green: 0.7764705882, blue: 0.831372549, alpha: 1)))
                Text("\(numItems) Items")
                    .foregroundColor(Color(#colorLiteral(red: 0.7607843137, green: 0.7764705882, blue: 0.831372549, alpha: 1)))
                Spacer()
            }
            Spacer()
            HStack(){
                Image(systemName: "calendar")
                    .foregroundColor(Color(#colorLiteral(red: 0.7607843137, green: 0.7764705882, blue: 0.831372549, alpha: 1)))
                Text("\(date) / \(time)")
                    .foregroundColor(Color(#colorLiteral(red: 0.7607843137, green: 0.7764705882, blue: 0.831372549, alpha: 1)))
                Spacer()
            }
            Spacer()
            HStack(){
                Image(systemName: "mappin")
                    .foregroundColor(Color(#colorLiteral(red: 0.7607843137, green: 0.7764705882, blue: 0.831372549, alpha: 1)))
                Text("\(address)")
                    .foregroundColor(Color(#colorLiteral(red: 0.7607843137, green: 0.7764705882, blue: 0.831372549, alpha: 1)))
                Spacer()
            }
            Spacer()
    
        }
    }
}

struct TextSpecification_Previews: PreviewProvider {
    static var previews: some View {
        TextSpecification(numItems: 4, date: "04 Dec", time: "09:30 PM", address: "1169 11th Street")
    }
}
