//
//  YourCleanerTile.swift
//  Wireframes
//
//  Created by Jaymin Ding on 11/30/20.
//

import SwiftUI

struct CleanerTile: View {
    var body: some View {
        ZStack(){
            
            MapView()
                .cornerRadius(10)
            VStack(){
                Spacer()
                CleanerTileButton(cleanerName: "Cleaner's Name", cleanerAddress: "1169 11th street")
                Spacer()
                    .frame(height: 5)
            }
            
        }.frame(width: 270, height: 200)
    }
}

struct CleanerTile_Previews: PreviewProvider {
    static var previews: some View {
        CleanerTile()
    }
}
