import SwiftUI

struct DeleteButton: View {
    
    var body: some View {
        
        ZStack(){
            HStack(){
                Image(systemName: trash)
                Text("Delete")
            }
            RoundedRectangle(cornerRadius: 20)
        }
        
        
    }

}


struct DeleteButton_Previews: PreviewProvider {
    
    static var previews: some View {
        
        DeleteButton()
    }
    
}
