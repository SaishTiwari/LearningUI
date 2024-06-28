import SwiftUI

struct BaseMaking_: View {
    var body: some View {
        VStack {
            Spacer()
            
            HStack {
                RoundedRectangle(cornerRadius: /*@START_MENU_TOKEN@*/25.0/*@END_MENU_TOKEN@*/)
                   
                
                    .fill(Color.blue)
                    .frame(height: 70)
                    .padding(.horizontal)
                
                    .overlay(
                        Text("Hello".uppercased())
                            .frame(width: 10, height: 10)
                        
                        )
                        
                    
                    
                    
            }
        }
        .frame(maxWidth: .infinity, maxHeight: .infinity, alignment: .bottom)
        
    }
}

#Preview {
    BaseMaking_()
}
