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
                
                HStack {
                    
                    BackButton(action: {print("Going back!")})
                    
                    Spacer()
                    
                    Text("Home")
                        .font(.custom("HelveticaNeue", size: 18))
                        .foregroundColor(Color(#colorLiteral(red: 0.6000000238, green: 0.6000000238, blue: 0.6000000238, alpha: 1)))
                    
                    Spacer()
                    
                    ThreeDotsButton(action: {print("Opening menu!")})
                    
                }.frame(width: 400, height: 30)
                
                Spacer()
                
                SearchBar(text: $searchBarTxt)
                
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
