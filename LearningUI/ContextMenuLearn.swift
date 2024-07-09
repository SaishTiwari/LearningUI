//
//  ContextMenuLearn.swift
//  LearningUI
//
//  Created by Saish Tiwari on 07/07/2024.
//

import SwiftUI

struct ContextMenuLearn: View {
    var body: some View {
        VStack(alignment: .leading, spacing: 10.0){
            
            Image(systemName: "house.fill")
                .font(/*@START_MENU_TOKEN@*/.title/*@END_MENU_TOKEN@*/)
            Text("Hello Guys")
                .font(.headline)
            Text("How to use context menu")
                .font(.caption)
                
        }
        .padding()
        
        .background(Color(.blue))
        .foregroundColor(.white)
        .cornerRadius(30)
        .contextMenu(menuItems: {
            /*@START_MENU_TOKEN@*/Text("Menu Item 1")/*@END_MENU_TOKEN@*/
            /*@START_MENU_TOKEN@*/Text("Menu Item 2")/*@END_MENU_TOKEN@*/
            /*@START_MENU_TOKEN@*/Text("Menu Item 3")/*@END_MENU_TOKEN@*/
        })
       
    }
}

#Preview {
    ContextMenuLearn()
}
