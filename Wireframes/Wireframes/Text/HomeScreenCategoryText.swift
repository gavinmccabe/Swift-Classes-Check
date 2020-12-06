//
//  HomeScreenCategoryText.swift
//  Wireframes
//
//  Created by Gavin on 12/6/20.
//

import SwiftUI

struct HomeScreenCategoryText: View {
    
    @State var title: String
    
    init(_ title: String) {
        self._title = State(initialValue: title)
    }
    
    var body: some View {
        
        HStack {
            
            Text(title)
                .font(.custom("HelveticaNeue-Medium", size: 30))
                .foregroundColor(Color(#colorLiteral(red: 0.2549019754, green: 0.2745098174, blue: 0.3019607961, alpha: 1)))
                .padding(.leading)
            Spacer()
            
        }
        
    }
}

struct HomeScreenCategoryText_Previews: PreviewProvider {
    static var previews: some View {
        HomeScreenCategoryText("Hello")
    }
}
