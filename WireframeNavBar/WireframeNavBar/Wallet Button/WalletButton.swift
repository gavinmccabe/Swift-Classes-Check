//
//  WalletButton.swift
//  WireframeNavBar
//
//  Created by Jaymin Ding on 11/30/20.
//

import SwiftUI

struct WalletButton: View {
    @State var toggled = false
    var body: some View {
        Button(action: walletBtnToggle){
            
            if toggled {
                WalletButtonToggled()
            } else {
               WalletButtonUntoggled()
            }
            
        }
    }
    func walletBtnToggle() {
        
        toggled.toggle()
        
    }
}

struct WalletButton_Previews: PreviewProvider {
    static var previews: some View {
        WalletButton()
    }
}
