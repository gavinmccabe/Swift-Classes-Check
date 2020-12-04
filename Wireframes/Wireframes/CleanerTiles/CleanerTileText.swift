//
//  CleanerTile.swift
//  Wireframes
//
//  Created by Jaymin Ding on 11/30/20.
//

import SwiftUI

struct CleanerTileText: View {
    @State var cleanerName: String
    @State var cleanerAddress: String
    var body: some View {
        ZStack(){
            RoundedRectangle(cornerRadius: 10)
                .foregroundColor(.white)
            HStack(){
                VStack(){
                    HStack(){
                        Spacer()
                            .frame(width: 5)
                        Text(cleanerName)
                            .foregroundColor(Color(#colorLiteral(red: 0.5803921569, green: 0.6156862745, blue: 0.6549019608, alpha: 1)))
                        Spacer()
                    }
                    Spacer()
                    HStack(){
                        Spacer()
                            .frame(width: 5)
                        Text(cleanerAddress)
                            .foregroundColor(Color(#colorLiteral(red: 0.8196078431, green: 0.831372549, blue: 0.8431372549, alpha: 1)))
                            .font(.custom("HelveticaNeue", size: 10))
                        Spacer()
                    }
                }
                Spacer()
                HStack(){
                    ZStack(){
                    
                        RoundedRectangle(cornerRadius: 10)
                            .foregroundColor(Color(#colorLiteral(red: 0.9647058824, green: 0.968627451, blue: 0.9764705882, alpha: 1)))
                            .frame(width: 30, height: 40)
                        Image(systemName: "chevron.forward")
                            .foregroundColor(Color(#colorLiteral(red: 0.6862745098, green: 0.7019607843, blue: 0.7803921569, alpha: 1)))
                    
                    }
                    Spacer()
                        .frame(width: 5)
                }
            }
        }.frame(width: 250, height: 50)
    }
}

struct CleanerTileText_Previews: PreviewProvider {
    static var previews: some View {
        CleanerTileText(cleanerName: "Cleaner's Name", cleanerAddress: "1169 11th street")
    }
}
