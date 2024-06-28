import SwiftUI

struct NotificationUI: View {
    var body: some View {
         
            Image(systemName: "heart.fill")
                .font(.system(size: 60))
                .foregroundColor(.blue)
                .frame(width: 100, height: 100, alignment: .center)
                .background(Color.clear)
            
            Circle()
                .foregroundColor(.pink)
                .frame(width: 20, height: 20, alignment: .bottomLeading)
                .overlay(
                    Text("5")
                        .font(.headline)
                        .foregroundColor(.yellow)
                        
                )
        
        
//        Text("Hello! My name is Saish").font(.largeTitle)
//            
        }
    }


#Preview {
    NotificationUI()
}
