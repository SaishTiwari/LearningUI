//
//  AppStorageLearning.swift
//  LearningUI
//
//  Created by Saish Tiwari on 16/07/2024.
//

import SwiftUI

struct AppStorageLearning: View {
  //  @State var currentUser : String?
    @AppStorage("name") var currentUser : String?
    var body: some View {
        
        Text(currentUser ?? "Type your name here")
        
        Button(action: {
            currentUser = "Saish"
            
        }, label: {
            Text("Save")
        })
        
    }
}

#Preview {
    AppStorageLearning()
}
