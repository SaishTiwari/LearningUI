//
//  PageTabViewLearning.swift
//  LearningUI
//
//  Created by Saish Tiwari on 09/07/2024.
//

import SwiftUI

struct PageTabViewLearning: View {
    var body: some View {
        TabView {
            ForEach(1...3, id: \.self){data in
                RoundedRectangle(cornerRadius: 30)
                   
            }
            .frame(width:300, height: 200)
            
            
            
        }
        .tabViewStyle(PageTabViewStyle())
        .background(Color.red)
    }
}

#Preview {
    PageTabViewLearning()
        .preferredColorScheme(.light)
}

