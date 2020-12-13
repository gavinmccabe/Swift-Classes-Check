//
//  HangrRating.swift
//  Wireframes
//
//  Created by Jaymin Ding on 12/13/20.
//

import SwiftUI

struct HangrRating: View {
    var body: some View {
        HStack(){
            GeometryReader { geo in
            Image("hanger")
                .resizable()
                .aspectRatio(contentMode: .fill)
                .frame(width: 50, height: 50)
            }
        }
    }
}

struct HangrRating_Previews: PreviewProvider {
    static var previews: some View {
        HangrRating()
    }
}