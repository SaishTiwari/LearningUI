//
//  IfElseLearn.swift
//  LearningUI
//
//  Created by Saish Tiwari on 24/06/2024.
//

import SwiftUI

struct IfElseLearn: View {
    @State var showCircle : Bool  = false
    var body: some View {
        
        VStack{
            
            
            Button(action: {
                
                showCircle.toggle()
            }, label: {
               
            Text("Shape button")
            .frame(width: 100, height: 100)
                
            
            })
            
            if showCircle{
                Circle()
                    .frame(width: 100, height: 100)
            }
            else{
                Rectangle()
                    .frame(width: 100, height: 100)
            }
                
        }
    }
}

#Preview {
    IfElseLearn()
}
