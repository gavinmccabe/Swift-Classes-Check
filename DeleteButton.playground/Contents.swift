import SwiftUI
import PlaygroundSupport

struct DeleteButton: View {
    
    var body: some View {
        
        ZStack(){
            RoundedRectangle(cornerRadius: 5)
                .foregroundColor(Color(#colorLiteral(red: 0.06073485315, green: 0.0193178039, blue: 0.2020891309, alpha: 1)))
                .frame(width: 100, height: 60)
            HStack(){
                Image(systemName: "trash")
                    .foregroundColor(.white)
                    .font(.custom("Arial",size: 20.0))
                Text("Delete")
                    .foregroundColor(.white)
            }
        }
        
        
    }

}

PlaygroundPage.current.setLiveView(DeleteButton())
