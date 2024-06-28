//
//  ExtractedFuncLearn.swift
//  LearningUI
//
//  Created by Saish Tiwari on 23/06/2024.
//

import SwiftUI

struct ExtractedFuncLearn: View {
    var body: some View {
        RoundRect()
    }
    
    func RoundRect() -> some View{
        RoundedRectangle(cornerRadius: 10)
            .fill(Color("CustomColor"))
            .frame(width: 200, height: 400, alignment: .center)
    }
}

#Preview {
    ExtractedFuncLearn()
}
