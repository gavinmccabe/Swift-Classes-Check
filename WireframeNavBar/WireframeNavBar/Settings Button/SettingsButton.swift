//
//  SettingsButton.swift
//  WireframeNavBar
//
//  Created by Jaymin Ding on 11/30/20.
//

import SwiftUI

struct SettingsButton: View {
    @State var toggled = false
    var body: some View {
        Button(action: settingsBtnToggle){
            
            if toggled {
                SettingsButtonToggled()
            } else {
               SettingsButtonUntoggled()
            }
            
        }
    }
    func settingsBtnToggle() {
        
        toggled.toggle()
        
    }
}

struct SettingsButton_Previews: PreviewProvider {
    static var previews: some View {
        SettingsButton()
    }
}
