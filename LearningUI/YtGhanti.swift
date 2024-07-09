//
//  YtGhanti.swift
//  LearningUI
//
//  Created by Saish Tiwari on 27/06/2024.
//

import SwiftUI

struct YtGhanti: View {
    var body: some View {
        ZStack(alignment: .topTrailing) {
            Image(systemName: "bell.fill")
                .font(.largeTitle)
                .padding()
            
            
            Circle()
                .foregroundColor(.red)
                .frame(width: 24, height: 24)
                .overlay(
                    Text("5")
                        .foregroundColor(.white)
                        .font(.caption)
                )
                .offset(x:-10, y: 10)
        }
    }
}

#Preview {
    YtGhanti()
}
