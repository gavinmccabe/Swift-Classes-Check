//
//  ProjectTileTogether.swift
//  doesntmatter
//
//  Created by Jaymin Ding on 11/29/20.
//

import SwiftUI

struct ProjectTileTogether: View {
    var body: some View {
        VStack(){
            
            ProjectTileButton(text: "Method", firstDesc: "Method", secondDesc: "Web", thirdDesc: "Sketch")
            ProjectTileButton(text: "Boost", firstDesc: "UI Kit", secondDesc: "Material", thirdDesc: "Figma")
            ProjectTileButton(text: "Silvercell", firstDesc: "Design System", secondDesc: "iOS", thirdDesc: "Mobile")
            
        }
    }
}

struct ProjectTileTogether_Previews: PreviewProvider {
    static var previews: some View {
        ProjectTileTogether()
    }
}
