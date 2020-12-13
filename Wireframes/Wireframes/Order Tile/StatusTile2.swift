//
//  StatusTile2.swift
//  Wireframes
//
//  Created by Jaymin Ding on 12/13/20.
//

import SwiftUI

struct StatusTile2: View {
    @State var status: String
    @State var id: String
    var body: some View {
        ZStack(){
            
            RoundedRectangle(cornerRadius: 10)
                .foregroundColor(Color(#colorLiteral(red: 0.9411764706, green: 0.9450980392, blue: 0.9607843137, alpha: 0.7789370303)))
            HStack(){
                Spacer()
                    .frame(width: 5)
                ZStack(){
                    Circle()
                        .frame(width: 45, height: 45)
                        .foregroundColor(Color(#colorLiteral(red: 0.3882352941, green: 0.4235294118, blue: 0.5764705882, alpha: 1)))
                    Image(systemName: "checkmark")
                        .foregroundColor(Color(#colorLiteral(red: 0.9568627451, green: 0.9607843137, blue: 0.9725490196, alpha: 0.5)))
                }
                Text(status)
                    .foregroundColor(Color(#colorLiteral(red: 0.3882352941, green: 0.4235294118, blue: 0.5764705882, alpha: 1)))
                Spacer()
                Text("ID: ")
                    .foregroundColor(Color(#colorLiteral(red: 0.3882352941, green: 0.4235294118, blue: 0.5764705882, alpha: 1)))
                Text(id)
                    .foregroundColor(Color(#colorLiteral(red: 0.3882352941, green: 0.4235294118, blue: 0.5764705882, alpha: 1)))
                ZStack(){
                    
                    RoundedRectangle(cornerRadius: 10)
                        .frame(width: 35, height: 50)
                        .foregroundColor(Color(#colorLiteral(red: 0.9647058824, green: 0.968627451, blue: 0.9764705882, alpha: 1)))
                    Image(systemName: "chevron.forward")
                        .foregroundColor(Color(#colorLiteral(red: 0.6941176471, green: 0.7098039216, blue: 0.7843137255, alpha: 1)))
                    
                }
                Spacer()
                    .frame(width: 5)
                
            }
        }.frame(width: 355, height: 70)
    }
}

struct StatusTile2_Previews: PreviewProvider {
    static var previews: some View {
        StatusTile2(status: "Done", id: "688432")
    }
}
