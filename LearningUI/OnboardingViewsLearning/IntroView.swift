//
//  IntroView.swift
//  LearningUI
//
//  Created by Saish Tiwari on 22/07/2024.
//

import SwiftUI

struct IntroView: View {
    @AppStorage("signed_in") var currentusersignedin : Bool = false
    var body: some View {
        ZStack{
            
            RadialGradient(colors: [Color.purple, Color.blue],
                           center: .topLeading,
                           startRadius: 600,
                           endRadius: 100)
            .ignoresSafeArea()
            
            if currentusersignedin {
                Text("Profile View")
            }
            else{
                Text("Home Page")
            }
            
        }
    }
}

#Preview {
    IntroView()
}
