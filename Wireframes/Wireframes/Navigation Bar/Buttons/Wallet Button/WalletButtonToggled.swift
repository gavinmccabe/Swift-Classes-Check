//
//  SwiftUIView.swift
//  WireframeNavBar
//
//  Created by Jaymin Ding on 11/30/20.
//

import SwiftUI

struct WalletButtonToggled: View {
    var body: some View {
        ZStack(){
            RoundedRectangle(cornerRadius: 10)
                .foregroundColor(Color(#colorLiteral(red: 0.9647058824, green: 0.968627451, blue: 0.9764705882, alpha: 1)))
            HStack(){
            
                Image(systemName: "dollarsign.square.fill")
                    .foregroundColor(Color(#colorLiteral(red: 0.4078431373, green: 0.4431372549, blue: 0.5843137255, alpha: 1)))
                Text("Wallet")
                    .foregroundColor(Color(#colorLiteral(red: 0.4078431373, green: 0.4431372549, blue: 0.5843137255, alpha: 1)))
                    .font(.custom("HelveticaNeue", size: 10))
            
            }
        }.frame(width: 70, height: 30)
    }
}

struct WalletButtonToggled_Previews: PreviewProvider {
    static var previews: some View {
        WalletButtonToggled()
    }
}
