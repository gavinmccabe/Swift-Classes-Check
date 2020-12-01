//
//  PlusButton.swift
//  WireframeNavBar
//
//  Created by Jaymin Ding on 11/30/20.
//

import SwiftUI

struct PlusButton: View {
    var body: some View {
        Button(action: plusBtnPressed){
            
            ZStack(){
                
                Image(systemName: "circle.fill")
                    .resizable()
                    .frame(width: 50, height: 50)
                    .foregroundColor(Color(#colorLiteral(red: 0.4078431373, green: 0.4431372549, blue: 0.5843137255, alpha: 1)))
                Image(systemName: "plus")
                    .foregroundColor(Color(#colorLiteral(red: 0.9450980392, green: 0.9490196078, blue: 0.9607843137, alpha: 1)))
                
            }
            
        }
    }
    func plusBtnPressed() {
        
        print("Plus Btn Pressed!")
        
    }
}

struct PlusButton_Previews: PreviewProvider {
    static var previews: some View {
        PlusButton()
    }
}
