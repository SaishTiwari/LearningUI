//
//  BindingLearn .swift
//  LearningUI
//
//  Created by Saish Tiwari on 23/06/2024.
//

import SwiftUI


struct BindingLearn_: View {
    @State var foregroundcolor: Color = Color.red
    @State var backgroundcolor : Color = Color.green
    var body: some View {
        ZStack{
            
            backgroundcolor
                .ignoresSafeArea(.all)
            
            buttonview(backgroundcolor: $backgroundcolor, foregroundcolor: $foregroundcolor)
                  }
    }
}

struct buttonview : View {
    @Binding var backgroundcolor : Color
    @Binding var foregroundcolor : Color
    var body: some View {
        Button(action: {
            backgroundcolor = Color.red
            
        }, label: {
            
            
            
            Text("Button")
                .font(.headline)
                .foregroundColor(foregroundcolor)
                .padding()
                
                .background(Color.white)
                .cornerRadius(10)
            
                
        })

        
    }
}

#Preview {
    BindingLearn_()
}
