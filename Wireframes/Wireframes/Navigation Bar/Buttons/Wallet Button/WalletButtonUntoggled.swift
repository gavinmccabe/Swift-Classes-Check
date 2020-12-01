//
//  WalletButtonUntoggled.swift
//  WireframeNavBar
//
//  Created by Jaymin Ding on 11/30/20.
//

import SwiftUI

struct WalletButtonUntoggled: View {
    var body: some View {
        Image(systemName: "dollarsign.square")
            .foregroundColor(Color(#colorLiteral(red: 0.8705882353, green: 0.8784313725, blue: 0.9019607843, alpha: 1)))
    }
}

struct WalletButtonUntoggled_Previews: PreviewProvider {
    static var previews: some View {
        WalletButtonUntoggled()
    }
}
