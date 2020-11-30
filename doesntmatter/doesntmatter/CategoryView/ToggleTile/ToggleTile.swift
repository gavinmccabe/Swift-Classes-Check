//
//  toggletile.swift
//  doesntmatter
//
//  Created by Jaymin Ding on 11/29/20.
//

import SwiftUI

struct ToggleTile: View {
    @State var isSelected = false
    @State var image: String
    @State var text: String
    var body: some View {
    
        Button(action: toggleBtnPressed) {
            
            if isSelected {
                
                ToggleTileToggled(text: text, image: image)
                
            } else {
                
                ToggleTileNotToggled(text: text, image: image)
                
            }
            
        }
        
    }
    func toggleBtnPressed() {
        isSelected.toggle()
    }
}

struct ToggleTile_Previews: PreviewProvider {
    static var previews: some View {
        ToggleTile(image: "archivebox", text: "ahaha")
    }
}
