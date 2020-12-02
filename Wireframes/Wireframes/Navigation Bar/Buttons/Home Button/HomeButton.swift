//
//  HomeButton.swift
//  WireframeNavBar
//
//  Created by Jaymin Ding on 11/30/20.
//

import SwiftUI

struct HomeButton: View {
    @State var toggled = true
    
    var body: some View {
        Button(action: homeBtnToggle){
            
            if toggled {
                HomeButtonToggled()
            } else {
               HomeButtonUntoggled()
            }
            
        }
    }
    func homeBtnToggle() {
        
        toggled.toggle()
        
    }
}

struct HomeButton_Previews: PreviewProvider {
    static var previews: some View {
        HomeButton()
    }
}
