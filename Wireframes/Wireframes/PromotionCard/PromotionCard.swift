//
//  PromotionCard.swift
//  Wireframes
//
//  Created by Gavin on 12/1/20.
//

import SwiftUI

struct PromotionCard: View {

    @State var promoTitle: String
    @State var cleanerName: String
    @State var badgeTitle: String
    
    var body: some View {
        
        ZStack {
            
            // Background
            RoundedRectangle(cornerRadius: 25.0)
                .foregroundColor(Color(#colorLiteral(red: 0.9647058824, green: 0.968627451, blue: 0.9764705882, alpha: 1)))
                .frame(width: 225, height: 100)
            
            VStack {
                
                // Badge
                HStack {
                    
                    PromotionBadge(badgeTitle)
                    Spacer().frame(width: 175)
                    
                }
                
                HStack {
                    
                    // Text stack
                    VStack {
                        
                        // Promo title
                        HStack {
                            
                            Text(promoTitle)
                                .font(.custom("HelveticaNeue-Medium", size: 12))
                                .foregroundColor(Color(#colorLiteral(red: 0.6000000238, green: 0.6000000238, blue: 0.6000000238, alpha: 1)))
                            
                            Spacer()
                            
                        }
                        
                        Spacer()
                            .frame(height: 6)
                        
                        // Cleaner name
                        HStack {
                            
                            Text(cleanerName)
                                .font(.custom("HelveticaNeue-Medium", size: 15))
                                .foregroundColor(Color(#colorLiteral(red: 0.6000000238, green: 0.6000000238, blue: 0.6000000238, alpha: 1)))
                            
                            Spacer()
                            
                        }
                        
                    }.padding(.leading, 10)
                    
        
                    // Chevron button
                    Image(systemName: "chevron.forward").resizable()
                        .aspectRatio(contentMode: .fit)
                        .foregroundColor(Color(#colorLiteral(red: 0.8039215803, green: 0.8039215803, blue: 0.8039215803, alpha: 1)))
                        .frame(width: 6)
                        .padding(.trailing, 10)
                        .padding(.bottom, 25)
                    
                }
                
            }.frame(width: 225, height: 100)
            
            
        }.frame(width: 225, height: 100).clipShape(RoundedRectangle(cornerRadius: 25))
        
    }
}

struct PromotionCard_Previews: PreviewProvider {
    static var previews: some View {
        PromotionCard(promoTitle: "5 shirts for $5", cleanerName: "Cleaner name", badgeTitle: "Near You")
    }
}
