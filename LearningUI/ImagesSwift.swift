//
//  ImagesSwift.swift
//  LearningUI
//
//  Created by Saish Tiwari on 17/06/2024.
//

import SwiftUI

struct ImagesSwift: View {
    var body: some View {
        // Text(/*@START_MENU_TOKEN@*/"Hello, World!"/*@END_MENU_TOKEN@*/)
       // Image(systemName: "heart.fill")
        Image("Monkey")
            .resizable()
            .aspectRatio(contentMode: .fill)
            .frame(width: 250, height: 250)
          //  .clipped()
           clipShape(
            Circle()
        
           )
        
        
    }
}

#Preview {
    ImagesSwift()
}
