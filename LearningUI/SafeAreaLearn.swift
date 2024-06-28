//
//  SafeAreaLearn.swift
//  LearningUI
//
//  Created by Saish Tiwari on 23/06/2024.
//

import SwiftUI

struct SafeAreaLearn: View {
    var body: some View {
        
        ZStack{
            Color.blue
            
                .edgesIgnoringSafeArea(/*@START_MENU_TOKEN@*/.all/*@END_MENU_TOKEN@*/)
            
            
            VStack{
                
                Text("Hello World")
                    .foregroundColor(.white)
                    .font(.system(size: 30))
            }
        }
        
    }
}
#Preview {
    SafeAreaLearn()
}
