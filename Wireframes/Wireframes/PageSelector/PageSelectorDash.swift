//
//  PageSelectorDash.swift
//  Wireframes
//
//  Created by Gavin on 12/13/20.
//

import SwiftUI

struct PageSelectorDash: View {
    var body: some View {
        RoundedRectangle(cornerRadius: 2.5)
            .frame(width: 17, height: 5)
            .foregroundColor(Color(#colorLiteral(red: 0.4, green: 0.4392156863, blue: 0.5960784314, alpha: 1)))
    }
}

struct PageSelectorDash_Previews: PreviewProvider {
    static var previews: some View {
        PageSelectorDash()
    }
}
