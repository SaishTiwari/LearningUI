//
//  TextFieldLearning.swift
//  LearningUI
//
//  Created by Saish Tiwari on 07/07/2024.
//

import SwiftUI

struct TextFieldLearning: View {
    @State var Username : String = ""
    @State var SavedText : [String] = []
    var body: some View {
        NavigationView{
            VStack {
                TextField(("Username"), text:$Username)
                    .padding(20)
                    .background(Color.gray.cornerRadius(10).opacity(0.3))
                    .foregroundColor(.red)
                
                
                
                Button(action: {
                    
                    saveText()
                },
                       label: {
                    Text("Save")
                        .padding()
                        .background(Color.blue.cornerRadius(10))
                        .foregroundColor(.white)
                        
                        
                })
                
                ForEach(SavedText, id: \.self){data in
                    Text(data)
                    
                }
                
                Spacer()
            }
            .padding()
            .navigationTitle("Login Page")
        }
        
        
    }
    
    func saveText(){
        
        SavedText.append(Username)
        Username = ""
    }
}

#Preview {
    TextFieldLearning()
}
