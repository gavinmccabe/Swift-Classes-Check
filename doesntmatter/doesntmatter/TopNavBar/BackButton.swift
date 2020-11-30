//
//  BackButton.swift
//  doesntmatter
//
//  Created by Gavin on 11/29/20.
//

import SwiftUI

struct BackButton: View {
    
    @State var action: () -> Void
    
    var body: some View {
        
        Button(action: action) {
            
            Image(systemName: "chevron.backward").resizable()
                .aspectRatio(contentMode: .fit)
                .frame(width: 20, height: 20)
                .foregroundColor(Color(#colorLiteral(red: 0.8039215803, green: 0.8039215803, blue: 0.8039215803, alpha: 1)))
            
        }
        
    }
}

struct BackButton_Previews: PreviewProvider {
    static var previews: some View {
        BackButton(action: {print("Hello")})
    }
}
