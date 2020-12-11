//
//  ButtonText.swift
//  Wireframes
//
//  Created by Jaymin Ding on 12/11/20.
//

import SwiftUI

struct ButtonText: View {
    @State var text: String
    var body: some View {
        Text(text)
            .font(.custom("HelveticaNeue", size: 20))
            .foregroundColor(.white)
    }
}

struct ButtonText_Previews: PreviewProvider {
    static var previews: some View {
        ButtonText(text: "Get Started")
    }
}
