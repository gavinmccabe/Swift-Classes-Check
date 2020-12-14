//
//  Hanger_Selected.swift
//  Wireframes
//
//  Created by Gavin on 12/13/20.
//

import SwiftUI

struct Hanger_Selected: View {
    var body: some View {
        Image("hanger")
            .resizable()
            .aspectRatio(contentMode: .fit)
            .frame(width: 10, height: 10)
            .colorMultiply(Color(#colorLiteral(red: 0.501960814, green: 0.501960814, blue: 0.501960814, alpha: 1)))
    }
}

struct Hanger_Selected_Previews: PreviewProvider {
    static var previews: some View {
        Hanger_Selected()
    }
}
