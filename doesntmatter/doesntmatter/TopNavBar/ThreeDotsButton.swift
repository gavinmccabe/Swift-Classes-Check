//
//  ThreeDotsButton.swift
//  doesntmatter
//
//  Created by Gavin on 11/29/20.
//

import SwiftUI

struct ThreeDotsButton: View {
    
    @State var action: () -> ()
    
    var body: some View {
        
        Button(action: action) {
            
            VStack {
                
                Spacer()
                Circle()
                    .frame(width: 5, height: 5)
                    .padding(.bottom, -30)
                    .foregroundColor(Color(#colorLiteral(red: 0.8039215803, green: 0.8039215803, blue: 0.8039215803, alpha: 1)))
                Circle()
                    .frame(width: 5, height: 5)
                    .padding(.bottom, -30)
                    .foregroundColor(Color(#colorLiteral(red: 0.8039215803, green: 0.8039215803, blue: 0.8039215803, alpha: 1)))
                Circle()
                    .frame(width: 5, height: 5)
                    .padding(.bottom, -30)
                    .foregroundColor(Color(#colorLiteral(red: 0.8039215803, green: 0.8039215803, blue: 0.8039215803, alpha: 1)))
                Spacer()
                
            }.frame(width: 20, height: 20)
            
        }
        
    }
}

struct ThreeDotsButton_Previews: PreviewProvider {
    static var previews: some View {
        ThreeDotsButton(action: {})
    }
}
