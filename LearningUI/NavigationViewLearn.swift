//
//  NavigationViewLearn.swift
//  LearningUI
//
//  Created by Saish Tiwari on 29/06/2024.
//

import SwiftUI

struct NavigationViewLearn: View {
    var body: some View {
        
        NavigationView{
            
           
            
            
            
            ScrollView{
                
                NavigationLink("Hello World", destination: Text("Second Screen"))
                
                
                Text("Hello World")
                Text("Hello World")
                Text("Hello World")
                Text("Hello World")
            }
            
            .navigationTitle("All Inboxes")
            .navigationBarTitleDisplayMode(/*@START_MENU_TOKEN@*/.automatic/*@END_MENU_TOKEN@*/)
            .navigationBarItems(leading:
            Button(action: {
                
                    
                
            }, 
                   label: {
                Image(systemName: "person.fill")
            })
      )  }
    }
}

#Preview {
    NavigationViewLearn()
}
