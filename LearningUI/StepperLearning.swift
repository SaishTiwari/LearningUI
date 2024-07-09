//
//  StepperLearning.swift
//  LearningUI
//
//  Created by Saish Tiwari on 09/07/2024.
//

import SwiftUI

struct StepperLearning: View {
    @State var widthRect : CGFloat = 100
    @State var HeightRect : CGFloat = 100

    var body: some View {
        
        VStack{
            
            RoundedRectangle(cornerRadius: /*@START_MENU_TOKEN@*/25.0/*@END_MENU_TOKEN@*/)
                .frame(width: widthRect, height: HeightRect)
            
            Stepper("Rectangle Width \(Text(String(format: "%0.f", widthRect)))")
            {
                widthRect+=10
            } onDecrement: {
                widthRect-=10
            }
            .padding()
            
            Stepper("Rectangle Height") {
                HeightRect+=10
            } onDecrement: {
                HeightRect-=10
            }
            .padding()
            .padding(.vertical, -3)

        }
    }
}

#Preview {
    StepperLearning()
}
