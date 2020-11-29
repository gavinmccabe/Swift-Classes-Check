//
//  ToggleTileToggled.swift
//  doesntmatter
//
//  Created by Jaymin Ding on 11/29/20.
//

import SwiftUI

struct ToggleTileToggled: View {
    @State var text: String
    @State var image: String
    var body: some View {
        ZStack(){
            RoundedRectangle(cornerRadius: 10)
                .foregroundColor(Color(#colorLiteral(red: 0.1764705882, green: 0.462745098, blue: 0.937254902, alpha: 1)))
            VStack(){
                Spacer()
                Image(systemName: image)
                    .resizable()
                    .aspectRatio(contentMode: .fit)
                    .frame(width: 40, height: 40)
                    .foregroundColor(.white)
                Spacer()
                Text(text)
                    .font(.custom("HelveticaNeue", size: 18))
                    .foregroundColor(.white)
                Spacer()
            }
        }.frame(width: 125, height: 125)
    }
}

struct ToggleTileToggled_Previews: PreviewProvider {
    static var previews: some View {
        ToggleTileToggled(text: "Yo wassup", image: "archivebox")
    }
}
