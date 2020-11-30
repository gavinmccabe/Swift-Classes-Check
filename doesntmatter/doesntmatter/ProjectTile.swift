//
//  ProjectTile.swift
//  doesntmatter
//
//  Created by Jaymin Ding on 11/29/20.
//

import SwiftUI

struct ProjectTile: View {
    @State var text: String
    @State var firstDesc: String
    @State var secondDesc: String
    @State var thirdDesc: String
    var body: some View {
        ZStack(){
            RoundedRectangle(cornerRadius: 10)
                .foregroundColor(.white)
            HStack(){
                VStack(){
                    HStack(){
                        Text(text)
                            .font(.custom("HelveticaNeue", size: 15))
                            .bold()
                            .foregroundColor(.black)
                        Spacer()
                    }
                    Spacer()
                    HStack(){
             
                        Text(firstDesc + " • " + secondDesc + " • " + thirdDesc)
                            .foregroundColor(Color(#colorLiteral(red: 0.7137254902, green: 0.7176470588, blue: 0.737254902, alpha: 1)))
                            .font(.custom("HelveticaNeue", size: 10))
                        Spacer()
                
                    }
                }
                Text(">")
                    .font(.custom("HelveticaNeue", size: 20))
                    .foregroundColor(.black)
            }
        }.frame(width: 300, height: 50)
    }
}

struct ProjectTile_Previews: PreviewProvider {
    static var previews: some View {
        ProjectTile(text: "Method", firstDesc: "Method", secondDesc: "Web", thirdDesc: "Sketch")
    }
}
