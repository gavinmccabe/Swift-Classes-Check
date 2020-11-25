import SwiftUI
import PlaygroundSupport

struct DeleteButton: View {
    
    var body: some View {
        
        ZStack(){
            
            RoundedRectangle(cornerRadius: 7)
                .foregroundColor(Color(#colorLiteral(red: 0.1450980392, green: 0.1490196078, blue: 0.2156862745, alpha: 1)))
                .frame(width: 149, height: 50)
                .shadow(color: Color(#colorLiteral(red: 0, green: 0, blue: 0, alpha: 0.1026428811)), radius: 8, x: 0, y: 1)
            
            HStack(){
                
                Image(systemName: "trash")
                    .foregroundColor(.white)
                    .font(.custom("Arial",size: 20.0))
                
                Text("Delete Item")
                    .foregroundColor(.white)
                
            }
            
        }
        
    }

}

PlaygroundPage.current.setLiveView(DeleteButton())
