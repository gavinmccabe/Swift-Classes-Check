//
//  CategoryView.swift
//  doesntmatter
//
//  Created by Gavin on 11/29/20.
//

import SwiftUI

struct CategoryView: View {
    var body: some View {
        HStack {
            
            Spacer()
            
            ToggleTile(image: "square.grid.2x2", text: "Apps")
            
            Spacer()
            
            ToggleTile(image: "archivebox", text: "Archive")
            
            Spacer()
            
            ToggleTile(image: "bolt", text: "Trends")
            
            Spacer()
            
        }
    }
}

struct CategoryView_Previews: PreviewProvider {
    static var previews: some View {
        CategoryView()
    }
}
