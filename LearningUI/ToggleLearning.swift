//
//  ToggleLearning.swift
//  LearningUI
//
//  Created by Saish Tiwari on 08/07/2024.
//

import SwiftUI

struct ToggleLearning: View {
    @State var isOn : Bool = false
    var body: some View {
        
        VStack{
            
            HStack{
                Text("Status:".uppercased())
                Text(isOn ? "Online".uppercased() : "Offline".uppercased())
            }
            .padding()
            
        
            Toggle(" Change Status".uppercased(), isOn: $isOn).padding(.horizontal,30)
        //   .toggleStyle(SwitchToggleStyle(tint: Color.red))
    }
        Spacer()
}
}

#Preview {
    ToggleLearning()
}
