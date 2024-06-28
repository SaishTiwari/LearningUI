//
//  Color.swift
//  LearningUI
//
//  Created by Saish Tiwari on 17/06/2024.
//
//
import SwiftUI

struct ColorCustom: View {
    var body: some View {

        RoundedRectangle(cornerRadius: 40)
            .fill(Color("CustomColor"))
            .frame(width:300, height: 200)
            .shadow(color: .custom.opacity(100), radius: 20)
        
        
        
    }
  }

//import SwiftUI
//
//struct CustomColorView: View {
//    var body: some View {
//        RoundedRectangle(cornerRadius: 40)
//            .fill(
//                Color("CustomColor")
//            )
//            .frame(width: 300, height: 200)
//    }
//}
//
//#Preview {
//    CustomColorView()
//}

#Preview {
    ColorCustom()
}
