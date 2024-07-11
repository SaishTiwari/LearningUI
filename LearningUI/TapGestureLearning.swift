//
//  TapGestureLearning.swift
//  LearningUI
//
//  Created by Saish Tiwari on 11/07/2024.
//

import SwiftUI

struct TapGestureLearning: View {
   @State var isClicked : Bool = false
    var body: some View {
        NavigationView {
            VStack{
                RoundedRectangle(cornerRadius: 20)
                    .frame(height: 200)
                    .foregroundColor(isClicked ? Color.blue : Color.gray)
                
                    Text("Button")
                    .foregroundColor(isClicked ? Color.yellow : Color.white)
                    .frame(height: 50)
                    .frame(maxWidth: /*@START_MENU_TOKEN@*/.infinity/*@END_MENU_TOKEN@*/)
                    .background(Color.blue)
                    .cornerRadius(20)
                    .onTapGesture(count: 2, perform: {
                        isClicked.toggle()
                    })
                
                Text("Tap twice on button to change color".uppercased()).padding()
                  // .font(.title2)
                    .font(.system(size: 15))
                    
                    Spacer()
                            }
            .padding()
            .navigationTitle("Tap Gesture")
        }
    }
}

#Preview {
    TapGestureLearning()
}
