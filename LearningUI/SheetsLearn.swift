//
//  SheetsLearn.swift
//  LearningUI
//
//  Created by Saish Tiwari on 26/06/2024.
//

import SwiftUI

struct SheetsLearn: View {
    @State var isClicked : Bool = false
    var body: some View {
        
        Button {
            isClicked.toggle()
            
        } label: {
        Text("Button")
            
                
                .foregroundColor(.white)
                .padding(20)
                .background(Color.blue.cornerRadius(25))
        }

        .fullScreenCover(isPresented: $isClicked, content: { //Can use .sheets also
            SecondScreen()
                .ignoresSafeArea(.all)
       //Do not use conditional statements in sheets.
})
               }
               }


struct SecondScreen : View {
    @Environment (\.presentationMode) var presentationMode
    var body: some View {
        
        ZStack(alignment:.topLeading, content: {
            Color.red
                .ignoresSafeArea(.all)
            
            Button(action: {
                presentationMode.wrappedValue.dismiss()
                
            }, label: {
                Image(systemName: "xmark")
                    .font(.largeTitle)
                    .foregroundColor(.white)
                    .padding(20)
                   // .background(Color.green)
                
                Text("Hello")

            })
        })
    }
}

#Preview {
    SheetsLearn()
    //SecondScreen()
}
