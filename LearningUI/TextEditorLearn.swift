//
//  TextEditorLearn.swift
//  LearningUI
//
//  Created by Saish Tiwari on 08/07/2024.
//

import SwiftUI

struct TextEditorLearn: View {
    @State var Paragraph : String = ""
    var body: some View {
        TextEditor(text: $Paragraph)
            .background(Color.blue.opacity(1))
            .foregroundColor(.red)
            .frame(width: 200, height: 200)
           
    }
}

#Preview {
    TextEditorLearn()
}
