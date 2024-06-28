//
//  StackLearning .swift
//  LearningUI
//
//  Created by Saish Tiwari on 19/06/2024.
//

import SwiftUI

struct StackLearning_: View {
    var body: some View {
        HStack{
            Rectangle()
                .fill(Color.red)
                .frame(width: 70, height: 70, alignment: .center)
            
            Rectangle()
                .fill(Color.blue)
                .frame(width: 60, height: 60, alignment: .center)
            
            Rectangle()
                .fill(Color.yellow)
                .frame(width: 50, height: 50, alignment: .center)
            
        }
    }
}

#Preview {
    StackLearning_()
}
