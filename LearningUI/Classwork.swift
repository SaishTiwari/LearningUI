//
//  Classwork.swift
//  LearningUI
//
//  Created by Saish Tiwari on 18/06/2024.
//

import SwiftUI

struct Classwork: View {
    var body: some View {
       
            RoundedRectangle(cornerRadius: 20)
        
            .fill(
                
                LinearGradient(colors: [Color.red, Color.blue], startPoint: .leading, endPoint: .trailing)

                    
            )
        
            .shadow(color:.red,
                    radius:20)
            .overlay(
                Text("Hello Samit! How are you")
                    .foregroundColor(Color.black)
                    .multilineTextAlignment(.leading)
                    .fontWeight(.heavy)
                    .opacity(2)
                    
                    )
        
           
        
            .foregroundColor(.red)
            .font(.system(size: 30))
            .frame(width: 300, height: 200, alignment: .center)
                
           
                
            
        Image(systemName: "sun.min.fill")
            .resizable()
            .scaledToFit()
            .frame(width: 100, height: 100, alignment: .leading)
            .foregroundColor(.yellow)
            .opacity(1)
            
        
        
    }
}

#Preview {
    Classwork()
}
