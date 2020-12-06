//
//  NavBar.swift
//  WireframeNavBar
//
//  Created by Jaymin Ding on 11/30/20.
//

import SwiftUI

struct NavBar: View {
    var body: some View {

        ZStack(){
            RoundedRectangle(cornerRadius: 15)
                .foregroundColor(.white)
                .frame(width: UIScreen.main.bounds.width, height: 70)
                .shadow(color: Color(#colorLiteral(red: 0, green: 0, blue: 0, alpha: 0.2459773386)), radius: 5)
            HStack(spacing: 45){
                HomeButton()
                OrderButton()
                SettingsButton()
                WalletButton()
                VStack(){
                    
                    PlusButton()
                        .offset(y: -60)
                        .padding(.top, 50)
                    
                    
                }
            }
        }.edgesIgnoringSafeArea(.all)
        .frame(height: 70)
       
    }
}

struct NavBar_Previews: PreviewProvider {
    static var previews: some View {
        NavBar()
    }
}
