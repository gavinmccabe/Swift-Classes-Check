//
//  PromotionBadge.swift
//  Wireframes
//
//  Created by Gavin on 12/1/20.
//

import SwiftUI

struct PromotionBadge: View {
    
    @State var title: String
    
    init(_ title: String) {
        
        self._title = State(initialValue: title)
        
    }
    
    
    var body: some View {
        
        ZStack {
            
            RoundedRectangle(cornerRadius: 5)
                .foregroundColor(.white)
                .shadow(color: Color(#colorLiteral(red: 0.8039215803, green: 0.8039215803, blue: 0.8039215803, alpha: 0.5327548602)), radius: 10)
                .frame(width: 60, height: 20)
            
            
            HStack {
                
                Spacer()
                    .frame(width: 2)
                
                Text(title.uppercased())
                    .font(.custom("HelveticaNeue-Medium", size: 7))
                    .foregroundColor(Color(#colorLiteral(red: 0.501960814, green: 0.501960814, blue: 0.501960814, alpha: 1)))
            }
            
        }.frame(width: 60, height: 20)
        
    }
}

struct PromotionBadge_Previews: PreviewProvider {
    static var previews: some View {
        PromotionBadge("Near You")
    }
}
