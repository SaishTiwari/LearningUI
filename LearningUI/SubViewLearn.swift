  //
//  SubViewLearn.swift
//  LearningUI
//
//  Created by Saish Tiwari on 23/06/2024.
//

import SwiftUI

struct SubViewLearn: View {
    var body: some View {
        VStack {
            Text("Hello")
            MyItem(num: 10, fruit: "Apple", color: .red)
        }
    }
}

struct MyItem: View {
    let num: Int
    let fruit: String
    let color: Color
    
    var body: some View {
        ZStack {
            Color.blue
                .edgesIgnoringSafeArea(.all)
            
            HStack {
                Text(fruit)
                    .foregroundColor(.white)
                    .padding()
                    .background(Color.green)
                    .cornerRadius(10)
                
                Text("\(num)")
                    .foregroundColor(.white)
                    .padding()
                    .background(Color.blue)
                    .cornerRadius(10)
            }
        }
    }
}

struct SubViewLearn_Previews: PreviewProvider {
    static var previews: some View {
        SubViewLearn()
    }
}
