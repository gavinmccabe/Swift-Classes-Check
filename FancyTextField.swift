//
//  FancyTextField.swift
//  TestProject
//
//  Created by Gavin on 11/27/20.
//

import SwiftUI

struct FancyTextField: View {
    
    @State var title: String
    @Binding var text: String
    @State var image: Image
    
    var body: some View {
        
        ZStack {
        
            // White bg and gray border
            RoundedRectangle(cornerRadius: 6)
                .foregroundColor(.white)
                .overlay(
                    
                    RoundedRectangle(cornerRadius: 6)
                        .stroke(Color(#colorLiteral(red: 0.8039215803, green: 0.8039215803, blue: 0.8039215803, alpha: 1)), lineWidth: 2)
                    
                )
            
            
            
            HStack {
                
                Spacer()
                
                image.resizable()
                    .aspectRatio(contentMode: .fit)
                    .frame(width: 20, height: 20)
                    .foregroundColor(Color(#colorLiteral(red: 0.1764705926, green: 0.4980392158, blue: 0.7568627596, alpha: 1)))
                    
                
                TextField(title, text: $text)
                    .font(.custom("HelveticaNeue-Bold", size: 15))
                
                Spacer()
                
            }
         
            
                
            
        }.frame(width: 220, height: 45)
        
        
        
        
    }
}

struct FancyTextField_Previews: PreviewProvider {
    @State static var val: String = ""
    static var previews: some View {
        FancyTextField(title: "Your URL", text: $val, image: Image(systemName: "link"))
    }
}
