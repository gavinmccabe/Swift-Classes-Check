//
//  NavBar.swift
//  WireframeNavBar
//
//  Created by Jaymin Ding on 11/30/20.
//

import SwiftUI

struct NavBar: View {
    var body: some View {
        VStack(){
            Spacer()
            ZStack(){
                RoundedRectangle(cornerRadius: 10)
                    .foregroundColor(.white)
                    .frame(width: UIScreen.main.bounds.width, height: 50)
                HStack(){
                    HomeButton()
                    Spacer()
                    OrderButton()
                    Spacer()
                    SettingsButton()
                    Spacer()
                    WalletButton()
                    Spacer()
                    VStack(){
                        
                        PlusButton()
                        Spacer()
                            .frame(height: 10)
                        
                    }
                }
            }
        }
    }
}

struct NavBar_Previews: PreviewProvider {
    static var previews: some View {
        NavBar()
    }
}
