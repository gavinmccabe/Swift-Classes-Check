//
//  Hanger_Deselected.swift
//  Wireframes
//
//  Created by Gavin on 12/13/20.
//

import SwiftUI

struct Hanger_Deselected: View {
    var body: some View {
        Image("hanger")
            .resizable()
            .aspectRatio(contentMode: .fit)
            .frame(width: 10, height: 10)
            .colorMultiply(Color(#colorLiteral(red: 0.8039215803, green: 0.8039215803, blue: 0.8039215803, alpha: 1)))
    }
}

struct Hanger_Deselected_Previews: PreviewProvider {
    static var previews: some View {
        Hanger_Deselected()
    }
}
