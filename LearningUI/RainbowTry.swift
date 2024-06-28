//
//  RainbowTry.swift
//  LearningUI
//
//  Created by Saish Tiwari on 17/06/2024.
//

import SwiftUI

import SwiftUI

struct RainbowTry: View {
    var body: some View {
        Text("Hello! \nWhat a beautiful day!".capitalized)
            .font(.body)
            .fontWeight(.bold)
            .foregroundColor(Color("CustomColor"))
            .frame(width:250, height: 100, alignment: .center)
            .padding(20)
        
        Circle()
            .trim(from: 0.5, to: 1)
            .stroke(
                LinearGradient(
                    gradient: Gradient(colors: [Color.red, Color.orange, Color.yellow, Color.green, Color.indigo]),
                    startPoint: .leading,
                    endPoint: .trailing
                ),
                style: StrokeStyle(lineWidth: 100, lineCap: .butt)
            )
            .frame(width: 250, height: 500)
    }
}

#Preview {
    RainbowTry()
}

#Preview {
    RainbowTry()
}
