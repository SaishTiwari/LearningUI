//
//  ColorPickerLearning.swift
//  LearningUI
//
//  Created by Saish Tiwari on 09/07/2024.
//

import SwiftUI

struct ColorPickerLearning: View {
    @State var bgColor : Color = Color.green
    var body: some View {
        ZStack{
            bgColor
                .edgesIgnoringSafeArea(/*@START_MENU_TOKEN@*/.all/*@END_MENU_TOKEN@*/)
            
            ColorPicker("Choose a color for background",
                        selection: $bgColor,
                        supportsOpacity: true)
            .padding().cornerRadius(20)
            .background(Color.black).cornerRadius(20)
            .foregroundColor(.white)
            .padding()
        }
    }
}

#Preview {
    ColorPickerLearning()
}
