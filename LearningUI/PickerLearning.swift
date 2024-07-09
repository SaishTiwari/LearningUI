//
//  PickerLearning.swift
//  LearningUI
//
//  Created by Saish Tiwari on 08/07/2024.
//

import SwiftUI

struct PickerLearning: View {
    @State var age : String = "1"
    var body: some View {
        VStack {
            
            Text("Age: \(age)")
            
            Picker(selection:$age) {
                
                ForEach(18..<20){ number in
                    
                    Text("\(number)")
                        .tag("\(number)")
                    
                }
                
            } label: {
                Text("Choose Your Age")
                
        }
          //  .pickerStyle(SegmentedPickerStyle())
          //  .pickerStyle(WheelPickerStyle())
            
            
          
        }

    }
}

#Preview {
    PickerLearning()
}
