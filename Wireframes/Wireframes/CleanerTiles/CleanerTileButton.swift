//
//  CleanerTileButton.swift
//  Wireframes
//
//  Created by Jaymin Ding on 11/30/20.
//

import SwiftUI

struct CleanerTileButton: View {
    @State var cleanerName: String
    @State var cleanerAddress: String
    var body: some View {
        Button(action: cleanerTileBtnPressed){
            
            CleanerTileText(cleanerName: cleanerName, cleanerAddress: cleanerAddress)
            
        }
    }
    func cleanerTileBtnPressed(){
        
        print("Cleaner Tile Button Pressed!")
        
    }
}

struct CleanerTileButton_Previews: PreviewProvider {
    static var previews: some View {
        CleanerTileButton(cleanerName: "Cleaner's Name", cleanerAddress: "1169 11th street")
    }
}
