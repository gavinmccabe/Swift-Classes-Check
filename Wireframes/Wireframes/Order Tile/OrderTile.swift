//
//  OrderTile.swift
//  Wireframes
//
//  Created by Jaymin Ding on 12/13/20.
//

import SwiftUI


/// The ordertile
struct OrderTile: View {
    
    // MARK: Struct Attributes
    
    @State var price: Double /// The price of the order
    
    @State var cleanerRating: Double /// The rating of the cleaner
    
    @State var numItems: Int ///  The number of items in the order
    
    @State var date: String /// The date of which the order was submitted
    
    @State var time: String /// The time for pickup
    
    @State var address: String /// The address for pickup
    
    @State var orderNumber: String /// The order number, id of the order
    
    // MARK: SwiftUI View
    
    var body: some View {
        GeometryReader { geo in
            ZStack(){
                RoundedRectangle(cornerRadius: 20)
                    .foregroundColor(.white)
                VStack(){
                    HStack(){
                        Spacer()
                            .frame(width: 15)
                        VStack(){
                            Spacer()
                                .frame(height: 15)
                            Text("$\(String(format: "%.2f", price))")
                                .foregroundColor(Color(#colorLiteral(red: 0.2666666667, green: 0.3294117647, blue: 0.5254901961, alpha: 1)))
                                .font(.custom("HelveticaNeue-Medium", size: 17))
                        }
                        Spacer()
                        VStack(){
                            Spacer()
                                .frame(height: 15)
                            HStack(){
                                Text(String(cleanerRating))
                                    .foregroundColor(Color(#colorLiteral(red: 0.6156862745, green: 0.6470588235, blue: 0.6941176471, alpha: 1)))
                                    .font(.custom("HelveticaNeue", size: 13))
                                try? HangerRating(cleanerRating)
                                Spacer()
                                    .frame(width: 10)
                            }
                        }
                        Spacer()
                            .frame(width: 10)
                    
                    }
                    DottedSeperator(width: 375, color: Color(#colorLiteral(red: 0.9490196078, green: 0.9568627451, blue: 0.9647058824, alpha: 1)))
                    HStack(){
                        Spacer()
                            .frame(width: 20)
                        TextSpecification(numItems: 4, date: "04 Dec", time: "09:30 PM", address: "1169 11th Street")
                        Spacer()
                    }
                    Button(action: statusBtnPressed) {
                    
                        OrderStatusTile(status: "Done", id: "688432")
                    
                    }
                    Spacer()
                        .frame(height: 10)
                }
            
            }.frame(width: 380, height: 220)
            .clipShape(RoundedRectangle(cornerRadius: 25))
        }
    }
    /// What happens if the status button at the bottom of the tile is pressed
    func statusBtnPressed() {
        
        print("Status Btn Pressed!")
        
    }
}

struct OrderTile_Previews: PreviewProvider {
    static var previews: some View {
        OrderTile(price: 20.99, cleanerRating: 3.5, numItems: 4, date: "04 Dec", time: "09:30 PM", address: "1169 11th Street", orderNumber: "688432")
    }
}
