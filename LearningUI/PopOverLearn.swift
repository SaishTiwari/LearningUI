//
//  PopOverLearn.swift
//  LearningUI
//
//  Created by Saish Tiwari on 26/06/2024.
//

import SwiftUI

struct PopOverLearn: View {
    @State var isClicked : Bool = false
    var body: some View {
        ZStack{
            
            Color.orange
                .ignoresSafeArea(.all)
            
            Button(action: {
               isClicked.toggle()
                
                
                
                
            },
                   label: {
                
                /*@START_MENU_TOKEN@*/Text("Button")/*@END_MENU_TOKEN@*/
                    .padding(20)
                    .background(Color.red.opacity(0.5).cornerRadius(10))
                    
                    
            })
            
            
            
            Spacer()
            
            
            if isClicked{
                NextScreen()
                    .transition(.move(edge: .bottom))
                    .animation(.spring)
            }
            
            
                

            
    
        }
    }
}

struct NextScreen : View {
    @Environment (\.presentationMode) var presentationmode
    var body: some View {
        ZStack(alignment: .topLeading){
            Color.red
                .ignoresSafeArea()
            
            
            Button(action: {
                presentationmode.wrappedValue.dismiss()
            },
                   label: {
                Image(systemName: "xmark")
                    .font(/*@START_MENU_TOKEN@*/.title/*@END_MENU_TOKEN@*/)
                   .background(Color.white)
                    
                    .padding(10)
                
            })
            
            
            
            
            
            
        }
    }
}

#Preview {
   PopOverLearn()
   // NextScreen()
}
