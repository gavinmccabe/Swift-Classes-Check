//
//  ContentView.swift
//  Wireframes
//
//  Created by Gavin on 12/4/20.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        
        VStack {
            
            Spacer()
            
            // MARK: Recent order tile
            
            Group {
                HomeScreenCategoryText("Recent Order")
                
                RecentOrderTile(numItems: 4, date: "04 Dec", time: "09:30 PM", address: "1169 11th street")
            }
            
            Spacer()
            
            // MARK: Your cleaner tile
            Group {
                HomeScreenCategoryText("Your Cleaner")
                
                CleanerTile(cleanerName: "Cleaner's Name", cleanerAddress: "1169 11th Street")
            }
            
            Spacer()
            
            DottedSeperator(width: 400, color: Color(#colorLiteral(red: 0.9490196078, green: 0.9568627451, blue: 0.9647058824, alpha: 1)))
            
            Spacer()
            
            
            // MARK: Promotion tiles
            ScrollView(.horizontal, showsIndicators: false) {
                
                HStack {
                    
                    PromotionCard(promoTitle: "5 shirts for $5", cleanerName: "Cleaner name", badgeTitle: "near you")
                    
                    PromotionCard(promoTitle: "5 shirts for $5", cleanerName: "Cleaner name", badgeTitle: "near you")
                    
                    PromotionCard(promoTitle: "5 shirts for $5", cleanerName: "Cleaner name", badgeTitle: "near you")
                    
                }.padding(.leading).padding(.trailing)
                
            }
            
            Spacer()
            
            // MARK: Nav bar
            NavBar()
            
        }.ignoresSafeArea(.all, edges: .bottom)
        
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
