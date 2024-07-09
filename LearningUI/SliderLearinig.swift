//
//  SliderLearinig.swift
//  LearningUI
//
//  Created by Saish Tiwari on 09/07/2024.
//

import SwiftUI

struct SliderLearinig: View {
   @State var rating : Double = 3
    var body: some View {
        
        HStack {
            Text("Rating:")
                .padding(.horizontal,-8)
            Text(String(format: "%0.2f", rating))
        }
        
        Slider(value: $rating, in: 1...5, step: 0.5)
            .accentColor(.red)
            .padding()
    }
}

#Preview {
    SliderLearinig()
}
