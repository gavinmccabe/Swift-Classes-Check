//
//  SearchBar.swift
//  doesntmatter
//
//  Created by Gavin on 11/29/20.
//

import SwiftUI

struct SearchBar: View {
    
    @Binding var text: String
    
    var body: some View {
        
        ZStack {
            
            RoundedRectangle(cornerRadius: 10)
                .foregroundColor(.white)
            
            HStack {
                
                Image(systemName: "magnifyingglass").resizable()
                    .aspectRatio(contentMode: .fit)
                    .frame(width: 20, height: 20)
                    .foregroundColor(Color(#colorLiteral(red: 0.8039215803, green: 0.8039215803, blue: 0.8039215803, alpha: 1)))
                    .padding(.leading)
                    
                TextField("Search", text: $text)
                    .font(.custom("HelveticaNeue", size: 15))
                    .foregroundColor(text == "" ? Color(#colorLiteral(red: 0.8039215803, green: 0.8039215803, blue: 0.8039215803, alpha: 1)) : .black)
                
                
                Spacer()
                
                
                
            }
            
        }.frame(width: 350, height: 50)
        
    }
}

struct SearchBar_Previews: PreviewProvider {
    @State static var text: String = ""
    static var previews: some View {
        SearchBar(text: $text)
    }
}
