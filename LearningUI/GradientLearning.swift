//
//  GradientLearning.swift
//  LearningUI
//
//  Created by Saish Tiwari on 17/06/2024.
//

import SwiftUI

struct GradientLearning: View {
    var body: some View {
//        Text("Hello, World!")
//            .foregroundColor(Color("CustomColor"))
        
        RoundedRectangle(cornerRadius: /*@START_MENU_TOKEN@*/25.0/*@END_MENU_TOKEN@*/)
            .fill(
           // Color("CustomColor")
                LinearGradient(colors: [Color.red, Color.blue, Color.green],
                               startPoint: .leading,
                               endPoint: .trailing)
            )
            .frame(width: 300, height: 400)
            
//
    }
}

#Preview {
    GradientLearning()
}
