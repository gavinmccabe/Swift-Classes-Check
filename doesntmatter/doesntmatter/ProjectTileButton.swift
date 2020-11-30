//
//  ProjectTileButton.swift
//  doesntmatter
//
//  Created by Jaymin Ding on 11/29/20.
//

import SwiftUI

struct ProjectTileButton: View {
    @State var text: String
    @State var firstDesc: String
    @State var secondDesc: String
    @State var thirdDesc: String
    var body: some View {
        Button(action: ProjectTileBtnPressed){
            
            ProjectTile(text: text, firstDesc: firstDesc, secondDesc: secondDesc, thirdDesc: thirdDesc)
            
        }
    }
    func ProjectTileBtnPressed() {
        
        print("Project Tile Btn Pressed!")
        
    }
}

struct ProjectTileButton_Previews: PreviewProvider {
    static var previews: some View {
        ProjectTileButton(text: "Method", firstDesc: "Method", secondDesc: "Web", thirdDesc: "Sketch")
    }
}
