//
//  GridLearning.swift
//  LearningUI
//
//  Created by Saish Tiwari on 22/06/2024.
//

import SwiftUI

struct GridLearning: View {
    let columns = [
        GridItem(.flexible(), spacing: 0, alignment: .leading),
        GridItem(.flexible(), spacing: 0, alignment: .leading),
        GridItem(.flexible(), spacing: 0, alignment: .leading)
    ]
    
    var body: some View {
        ScrollView {
            LazyVGrid(columns: columns, alignment: .center, spacing: 10, pinnedViews: .sectionHeaders) {
                Section(header: Text("Photos")
                            .foregroundColor(.black)
                            .frame(maxWidth: .infinity, alignment: .leading)
                            .padding()
                            .background(Color.white.opacity(0.2))
                            .cornerRadius(10)
                ) {
                    ForEach(1..<50) { i in
                        Rectangle()
                            .fill(Color.white)
                            .shadow(color: .black, radius: 10)
                            .opacity(0.8)
                            .frame(height: 150)
                            .padding()
                    }
                }
            }
            .padding()
        }
    }
}

#Preview {
    GridLearning()
}
