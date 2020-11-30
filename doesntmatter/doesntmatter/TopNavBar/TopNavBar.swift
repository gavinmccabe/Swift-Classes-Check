//
//  TopNavBar.swift
//  doesntmatter
//
//  Created by Gavin on 11/29/20.
//

import SwiftUI

struct TopNavBar: View {
    var body: some View {
        HStack {
            
            BackButton(action: {print("Going back!")})
            
            Spacer()
            
            Text("Home")
                .font(.custom("HelveticaNeue", size: 18))
                .foregroundColor(Color(#colorLiteral(red: 0.6000000238, green: 0.6000000238, blue: 0.6000000238, alpha: 1)))
            
            Spacer()
            
            ThreeDotsButton(action: {print("Opening menu!")})
            
        }.frame(width: 400, height: 30)
        
    }
}

struct TopNavBar_Previews: PreviewProvider {
    static var previews: some View {
        TopNavBar()
    }
}
