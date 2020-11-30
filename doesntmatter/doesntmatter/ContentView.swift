//
//  ContentView.swift
//  doesntmatter
//
//  Created by Jaymin Ding on 11/29/20.
//

import SwiftUI

struct ContentView: View {
    
    @State var searchBarTxt: String = ""
    
    var body: some View {
        
        
        ZStack {
            
            Color(#colorLiteral(red: 0.968627451, green: 0.968627451, blue: 0.968627451, alpha: 1)).ignoresSafeArea()
            
            VStack {
                
                TopNavBar()
                
                Spacer().frame(height: 25)
                
                SearchBar(text: $searchBarTxt)
                
                Spacer()
                
                HStack {
                    
                    CategoryHeader("Categories")
                    
                    Spacer()
                    
                    CategoryButton()
                    
                }
                
                Spacer()
                
            }
            
            
            
            
            
        }
        
        
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
