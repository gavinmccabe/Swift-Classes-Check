//
//  OrdersButtonUntoggled.swift
//  WireframeNavBar
//
//  Created by Jaymin Ding on 11/30/20.
//

import SwiftUI

struct OrdersButtonUntoggled: View {
    var body: some View {
        Image(systemName: "list.bullet.rectangle")
            .foregroundColor(Color(#colorLiteral(red: 0.8705882353, green: 0.8784313725, blue: 0.9019607843, alpha: 1)))
    }
}

struct OrdersButtonUntoggled_Previews: PreviewProvider {
    static var previews: some View {
        OrdersButtonUntoggled()
    }
}
