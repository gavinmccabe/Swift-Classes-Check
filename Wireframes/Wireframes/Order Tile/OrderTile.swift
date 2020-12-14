//
//  OrderTile.swift
//  Wireframes
//
//  Created by Jaymin Ding on 12/13/20.
//

import SwiftUI

struct OrderTile: View {
    @State var price: String
    @State var cleanerRating: Double
    var body: some View {
        ZStack(){
            RoundedRectangle(cornerRadius: 20)
                .foregroundColor(.white)
            VStack(){
                HStack(){
                    Spacer()
                        .frame(width: 10)
                    Text("$\(price)")
                    Spacer()
                    Text(String(cleanerRating))
                    HangerRating(cleanerRating)
                    
                }
                DottedSeperator(width: 350)
                HStack(){
                    Spacer()
                        .frame(width: 20)
                    TextSpecification(numItems: 4, date: "04 Dec", time: "09:30 PM", address: "1169 11th Street")
                    Spacer()
                }
                Button(action: statusBtnPressed) {
                    
                    StatusTile2(status: "Done", id: "688432")
                    
                }
                Spacer()
                    .frame(height: 10)
            }
            
        }.frame(width: 380, height: 220)
        .clipShape(RoundedRectangle(cornerRadius: 25))
    }
    func statusBtnPressed() {
        
        print("Status Btn Pressed!")
        
    }
}

struct OrderTile_Previews: PreviewProvider {
    static var previews: some View {
        OrderTile(price: "20.99", rating: 3.6)
    }
}
