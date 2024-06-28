//
//  ScrollViewLearn.swift
//  LearningUI
//
//  Created by Saish Tiwari on 20/06/2024.
//

import SwiftUI

struct ScrollViewLearn: View {
    var body: some View {
        VStack{
            ScrollView{
                ForEach(1..<10){i in
                    ScrollView(.horizontal, showsIndicators: true, content:{
                    
                    HStack{
                        ForEach(1..<20){i in
                           
                                
                                RoundedRectangle(cornerRadius: /*@START_MENU_TOKEN@*/25.0/*@END_MENU_TOKEN@*/)
                                    .fill(Color.white)
                                    .frame(width: 200, height: 150)
                                    .shadow(radius: /*@START_MENU_TOKEN@*/10/*@END_MENU_TOKEN@*/)
                                    .padding()
                                
                            }
                                       
                             }
                        
                    }
               ) }
            }
                       }
                       }
                       }
            
                       

#Preview {
    ScrollViewLearn()
}

