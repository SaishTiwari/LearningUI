//
//  OnAppearLearning.swift
//  LearningUI
//
//  Created by Saish Tiwari on 11/07/2024.
//

import SwiftUI

struct OnAppearLearning: View {
   @State var myText : String = "This the text"
    var body: some View {
        
        NavigationView{
            
            ScrollView{
                
                Text(myText)
            }
            .onAppear(perform: {
                myText = "This is the appearing text"
            })
            
            .navigationTitle("Hello There")
        }
        
        
    }
}

#Preview {
    OnAppearLearning()
}
