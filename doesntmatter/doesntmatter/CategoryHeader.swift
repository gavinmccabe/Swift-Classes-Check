//
//  CategoryHeader.swift
//  doesntmatter
//
//  Created by Gavin on 11/29/20.
//

import SwiftUI

struct CategoryHeader: View {
    
    @State var title: String
    
    var body: some View {
        Text(title)
            .font(.custom("HelveticaNeue-Bold", size: 30))
    }
}

struct CategoryHeader_Previews: PreviewProvider {
    static var previews: some View {
        CategoryHeader(title: "Title")
    }
}
