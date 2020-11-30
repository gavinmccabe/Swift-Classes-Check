//
//  ToggleTileNotToggled.swift
//  doesntmatter
//
//  Created by Jaymin Ding on 11/29/20.
//

import SwiftUI

struct ToggleTileNotToggled: View {
    @State var text: String
    @State var image: String
    var body: some View {
        ZStack(){
            RoundedRectangle(cornerRadius: 10)
                .foregroundColor(Color(#colorLiteral(red: 1, green: 1, blue: 1, alpha: 1)))
            VStack(){
                Spacer()
                Image(systemName: image)
                    .resizable()
                    .aspectRatio(contentMode: .fit)
                    .frame(width: 40, height: 40)
                    .foregroundColor(.black)
                Spacer()
                Text(text)
                    .font(.custom("HelveticaNeue", size: 18))
                    .foregroundColor(.black)
                Spacer()
            }
        }.frame(width: 125, height: 125)
    }
}

struct ToggleTileNotToggled_Previews: PreviewProvider {
    static var previews: some View {
        ToggleTileNotToggled(text: "AHAHAHA", image: "archivebox")
    }
}
