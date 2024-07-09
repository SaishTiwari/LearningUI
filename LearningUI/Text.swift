//
//  Text.swift
//  LearningUI
//
//  Created by Saish Tiwari on 16/06/2024.
//

import SwiftUI

struct MyCustomView: View {
    var body: some View {
        Text("Hello, World! This is my first SwiftUI experience it's been really fun ")
        
            .bold()
            .underline()
            .padding(10)
            .font(.system(size: 24, weight: .semibold, design: .serif))
        
            .multilineTextAlignment(.center)
    
            .baselineOffset(-10)
        
    }
}


#Preview {
    MyCustomView()
}
