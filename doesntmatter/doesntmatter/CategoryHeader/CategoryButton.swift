//
//  CategoryButton.swift
//  doesntmatter
//
//  Created by Gavin on 11/29/20.
//

import SwiftUI

struct CategoryButton: View {
    var body: some View {
        HStack {
            
            Text("All")
                .font(.custom("HelveticaNeue", size: 18))
                .foregroundColor(Color(#colorLiteral(red: 0.1764705882, green: 0.462745098, blue: 0.937254902, alpha: 1)))
            
            Image(systemName: "arrow.forward").resizable()
                .aspectRatio(contentMode: .fit)
                .foregroundColor(Color(#colorLiteral(red: 0.1764705882, green: 0.462745098, blue: 0.937254902, alpha: 1)))
                .frame(width: 15)
            
        }.padding()
    }
}

struct CategoryButton_Previews: PreviewProvider {
    static var previews: some View {
        CategoryButton()
    }
}
