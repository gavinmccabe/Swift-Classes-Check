//
//  PageSelectorDot.swift
//  Wireframes
//
//  Created by Gavin on 12/13/20.
//

import SwiftUI

struct PageSelectorDot: View {
    var body: some View {
        Circle()
            .frame(width: 5, height: 5)
            .foregroundColor(Color(#colorLiteral(red: 0.6980392157, green: 0.7176470588, blue: 0.7960784314, alpha: 1)))
    }
}

struct PageSelectorDot_Previews: PreviewProvider {
    static var previews: some View {
        PageSelectorDot()
    }
}
