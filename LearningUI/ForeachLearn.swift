//
//  ForeachLearn.swift
//  LearningUI
//
//  Created by Saish Tiwari on 20/06/2024.
//

import SwiftUI


struct ForeachLearn: View {
    let data : [String] = ["Saish", "Manish", "Samit", "Piyush"]

    var body: some View {
        
        ForEach(data.indices, id: \.self){i in
            Text("\(data[i])")
        }
        
            
            
        }
        
    }


#Preview {
    ForeachLearn()
}
