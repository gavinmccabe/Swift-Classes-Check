//
//  StatusTile.swift
//  Wireframes
//
//  Created by Jaymin Ding on 12/4/20.
//

import SwiftUI

struct StatusTile: View {
    @State var status: String
    @State var id: String
    var body: some View {
        ZStack(){
            
            RoundedRectangle(cornerRadius: 10)
                .foregroundColor(Color(#colorLiteral(red: 0.6862745098, green: 0.6980392157, blue: 0.7607843137, alpha: 0.7789370303)))
            HStack(){
                Spacer()
                    .frame(width: 5)
                ZStack(){
                    Circle()
                        .frame(width: 45, height: 45)
                        .foregroundColor(.white)
                    Image(systemName: "checkmark")
                        .foregroundColor(Color(#colorLiteral(red: 0.6862745098, green: 0.6980392157, blue: 0.7607843137, alpha: 0.5)))
                }
                Text(status)
                    .foregroundColor(Color(#colorLiteral(red: 0.9568627451, green: 0.9607843137, blue: 0.9725490196, alpha: 1)))
                Spacer()
                Text("ID: ")
                    .foregroundColor(Color(#colorLiteral(red: 0.9568627451, green: 0.9607843137, blue: 0.9725490196, alpha: 1)))
                Text(id)
                    .foregroundColor(Color(#colorLiteral(red: 0.9568627451, green: 0.9607843137, blue: 0.9725490196, alpha: 1)))
                ZStack(){
                    
                    RoundedRectangle(cornerRadius: 10)
                        .frame(width: 35, height: 50)
                        .foregroundColor(Color(#colorLiteral(red: 0.8078431373, green: 0.8196078431, blue: 0.8392156863, alpha: 1)))
                    Image(systemName: "chevron.forward")
                        .foregroundColor(Color(#colorLiteral(red: 0.9568627451, green: 0.9607843137, blue: 0.9725490196, alpha: 1)))
                    
                }
                Spacer()
                    .frame(width: 5)
                
            }
        }.frame(width: 355, height: 70)
    }
}

struct StatusTile_Previews: PreviewProvider {
    static var previews: some View {
        StatusTile(status: "Done", id: "688432")
    }
}
