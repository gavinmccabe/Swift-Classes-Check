//
//  Button.swift
//  Wireframes
//
//  Created by Jaymin Ding on 12/11/20.
//

import SwiftUI

struct FullScreenButton: View {
    @State var action: () -> ()
    @State var text: String
    var body: some View {
        Button(action: action) {
            
            
            ZStack(){
                
                RoundedRectangle(cornerRadius: 15)
                    .foregroundColor(Color(#colorLiteral(red: 0.4, green: 0.4392156863, blue: 0.5960784314, alpha: 1)))
                    .frame(width: 375, height: 60)
                ButtonText(text: text)
                    
                
            }
            
            
        }
    }
}

struct FullScreenButton_Previews: PreviewProvider {
    static var previews: some View {
        FullScreenButton(action: {print("Hello")}, text: "Get Started")
    }
}
