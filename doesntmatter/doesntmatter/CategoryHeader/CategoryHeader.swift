//
//  CategoryHeader.swift
//  doesntmatter
//
//  Created by Gavin on 11/29/20.
//

import SwiftUI

struct CategoryHeader: View {
    
    @State var title: String
    
    init(_ title: String) {
        
        self._title = State(initialValue: title)
        
    }
    
    var body: some View {
        Text(title)
            .font(.custom("HelveticaNeue-Bold", size: 30))
            .padding()
    }
}

struct CategoryHeader_Previews: PreviewProvider {
    static var previews: some View {
        CategoryHeader("Title")
    }
}
