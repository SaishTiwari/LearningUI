//
//  PaddingLearn.swift
//  LearningUI
//
//  Created by Saish Tiwari on 19/06/2024.
//

import SwiftUI

struct PaddingLearn: View {
    var body: some View {
        VStack {
            Text(/*@START_MENU_TOKEN@*/"Hello, World!"/*@END_MENU_TOKEN@*/)
                .font(.title)
                .fontWeight(.semibold)
//             .frame(maxWidth: .infinity, alignment: .leading)
            //.padding(.leading, 10)
            
            Text("This is what we gonna do in this page, this is multiple line so will be easy to do ")
                .padding(.horizontal, 20)
                .multilineTextAlignment(/*@START_MENU_TOKEN@*/.leading/*@END_MENU_TOKEN@*/)
                .padding(.horizontal, 10)
            
        }
//        .background(Color.white)
//        .padding()
//        .background(Color.white)
        .padding([.top, .bottom, .trailing], 20)
        .background(
            
            
            Color.white
                
                .cornerRadius(10)
                
                .shadow(color: .black.opacity(0.4 )
                        , radius:10, x: 0, y: 10)
            
                    )
            
               
            
        
        
    }
}

#Preview {
    PaddingLearn()
}
