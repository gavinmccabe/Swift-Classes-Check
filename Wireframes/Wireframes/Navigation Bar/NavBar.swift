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
                    .shadow(color: Color(#colorLiteral(red: 0, green: 0, blue: 0, alpha: 0.5)), radius: 8)
                HStack(spacing: 45){
                    HomeButton()
                    OrderButton()
                    SettingsButton()
                    WalletButton()
                    VStack(){
                        
                        PlusButton()
                        Spacer()
                            .frame(height: 10)
                        
                    }
                }
            }.edgesIgnoringSafeArea(.all)
        }.edgesIgnoringSafeArea(.all)
    }
}

struct NavBar_Previews: PreviewProvider {
    static var previews: some View {
        NavBar()
    }
}
