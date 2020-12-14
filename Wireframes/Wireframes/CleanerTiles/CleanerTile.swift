//
//  YourCleanerTile.swift
//  Wireframes
//
//  Created by Jaymin Ding on 11/30/20.
//

import SwiftUI

struct CleanerTile: View {
    
    @State var cleanerName: String
    @State var cleanerAddress: String
    
    var body: some View {
        ZStack(){
            
            Image("map_bg")
                .resizable()
                .cornerRadius(20)
            VStack(){
                Spacer()
                CleanerTileButton(cleanerName: cleanerName, cleanerAddress: cleanerAddress)
                Spacer()
                    .frame(height: 10)
            }
            
        }.frame(width: 380, height: 210)
    }
}

struct CleanerTile_Previews: PreviewProvider {
    static var previews: some View {
        CleanerTile(cleanerName: "Cleaner's Name", cleanerAddress: "1169 11th Street")
    }
}
