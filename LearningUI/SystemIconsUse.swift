//
//  SystemIconsUse.swift
//  LearningUI
//
//  Created by Saish Tiwari on 17/06/2024.
//

import SwiftUI

struct SystemIconsUse: View {
    var body: some View {
        Text("Let's fly in the sky".uppercased())
            
            .fontWeight(.heavy)
            .font(.system(size:30))
            .foregroundColor(Color("CustomColor"))
            .shadow(color: .orange, radius: 10)
            
        Image(systemName: "sunrise.fill")
            .renderingMode(.original)
            .resizable()
            
            .aspectRatio(contentMode: .fill)
            .foregroundColor(Color("CustomColor"))
            
            .shadow(color: .orange, radius: 10)
                        
    
           
            .frame(width: 200, height: 300)
        
    }
}

#Preview {
    SystemIconsUse()
}
