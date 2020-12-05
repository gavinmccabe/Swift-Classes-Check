//
//  RecentOrderTile.swift
//  Wireframes
//
//  Created by Jaymin Ding on 12/4/20.
//

import SwiftUI

struct RecentOrderTile: View {
    @State var numItems: Int
    @State var date: String
    @State var time: String
    @State var address: String
    var body: some View {
        ZStack(){
            
            Image("clothes_bg")
                .resizable()
                .aspectRatio(contentMode: .fill)
                .clipShape(RoundedRectangle(cornerRadius: 25))
                .blur(radius: 2)
            VStack(){
                HStack(){
                    Spacer()
                        .frame(width: 20)
                    VStack(){
                        Spacer()
                            .frame(height: 20)
                        HStack(){
                            Image(systemName: "square.fill")
                                .foregroundColor(Color(#colorLiteral(red: 0.9568627451, green: 0.9607843137, blue: 0.9725490196, alpha: 1)))
                            Text("\(numItems) Items")
                                .foregroundColor(Color(#colorLiteral(red: 0.9568627451, green: 0.9607843137, blue: 0.9725490196, alpha: 1)))
                            Spacer()
                        }
                        Spacer()
                        HStack(){
                            Image(systemName: "calendar")
                                .foregroundColor(Color(#colorLiteral(red: 0.9568627451, green: 0.9607843137, blue: 0.9725490196, alpha: 1)))
                            Text("\(date) / \(time)")
                                .foregroundColor(Color(#colorLiteral(red: 0.9568627451, green: 0.9607843137, blue: 0.9725490196, alpha: 1)))
                            Spacer()
                        }
                        Spacer()
                        HStack(){
                            Image(systemName: "mappin")
                                .foregroundColor(Color(#colorLiteral(red: 0.9568627451, green: 0.9607843137, blue: 0.9725490196, alpha: 1)))
                            Text("\(address)")
                                .foregroundColor(Color(#colorLiteral(red: 0.9568627451, green: 0.9607843137, blue: 0.9725490196, alpha: 1)))
                            Spacer()
                        }
                        Spacer()
                
                    }
                    Spacer()
                }
                Button(action: statusBtnPressed) {
                    
                    StatusTile(status: "Done", id: "688432")
                    
                }
                Spacer()
                    .frame(height: 10)
            }
            
        }.frame(width: 375, height: 220)
    }
    func statusBtnPressed() {
        
        print("Status Btn Pressed!")
        
    }
}

struct RecentOrderTile_Previews: PreviewProvider {
    static var previews: some View {
        RecentOrderTile(numItems: 4, date: "04 Dec", time: "09:30 PM", address: "1169 11th Street")
    }
}
