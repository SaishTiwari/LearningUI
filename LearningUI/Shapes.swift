//
//  Shapes.swift
//  LearningUI
//
//  Created by Saish Tiwari on 17/06/2024.
//

import SwiftUI

struct Shapes: View {
    var body: some View {
//        Circle()
//            .fill(Color.blue)
//            .stroke(.red, lineWidth: 10)
//            .padding(10)
//
//        Ellipse()
//        Capsule(style: .circular)
//            .frame(width: 200, height: 50)
//
        
        RoundedRectangle(cornerRadius: 10)
            .fill(
                Color("CustomColor")
            )
                
           // .size(CGSize(width: 200, height: 400.0))
                
            .frame(width: 200, height: 400, alignment: .center)
            
            
        
    }
}

#Preview {
    Shapes()
}
