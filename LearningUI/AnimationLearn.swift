//
//  AnimationLearn.swift
//  LearningUI
//
//  Created by Saish Tiwari on 25/06/2024.
//

import SwiftUI

struct AnimationLearn: View {
    @State var isAnimated: Bool = true
    
    var body: some View {
        VStack {
            Button(action: {
                withAnimation(.easeInOut.delay(0.23)) {
                    isAnimated.toggle()
                }
            }, label: {
                Text("Button")
                    .font(.title)
            })
            
            Spacer()
            
            RoundedRectangle(cornerRadius: 25.0)
                .fill(isAnimated ? Color.red : Color.green)
                .frame(width: 200, height: 100)
            
            Spacer()
        }
    }
}

#Preview {
    AnimationLearn()
}
