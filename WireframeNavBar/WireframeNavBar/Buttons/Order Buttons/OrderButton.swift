//
//  OrderButton.swift
//  WireframeNavBar
//
//  Created by Jaymin Ding on 11/30/20.
//

import SwiftUI

struct OrderButton: View {
    @State var toggled = false
    var body: some View {
        Button(action: orderBtnToggle){
            
            if toggled {
                OrdersButtonToggled()
            } else {
               OrdersButtonUntoggled()
            }
            
        }
    }
    func orderBtnToggle() {
        
        toggled.toggle()
        
    }
}

struct OrderButton_Previews: PreviewProvider {
    static var previews: some View {
        OrderButton()
    }
}
