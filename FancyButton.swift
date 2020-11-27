//
//  FancyButton.swift
//  TestProject
//
//  Created by Gavin on 11/27/20.
//

import SwiftUI

struct FancyButton: View {
    
    @State var label: String
    @State var action: () -> Void
    
    var body: some View {
        
        Button(action: action) {
            
            ZStack {
                
                RoundedRectangle(cornerRadius: 20)
                    .foregroundColor(Color(#colorLiteral(red: 0.1764705926, green: 0.4980392158, blue: 0.7568627596, alpha: 1)))
            
                Text(label)
                    .font(.custom("HelveticaNeue-Bold", size: 15.0))
                    .foregroundColor(.white)
                
                
            }.frame(width: 250, height: 50)
        }
            
    }
        
        
}

struct FancyButton_Previews: PreviewProvider {
    static var previews: some View {
        FancyButton(label: "Hello!", action: {})
    }
}
