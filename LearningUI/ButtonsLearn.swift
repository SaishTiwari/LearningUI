//
//  ButtonsLearn.swift
//  LearningUI
//
//  Created by Saish Tiwari on 23/06/2024.
//

import SwiftUI

struct ButtonsLearn: View {
    @State var title : String = "Like or Dislike".uppercased()
    var body: some View {
        //        VStack {
        //
                 Text (title)
            .padding(.bottom)
        //            Button("Press Me"){
        //                self.title = "Press Me harder".uppercased()
        //
        //            }
        //
        
        
        HStack(spacing: 50) {
            Button(action: {
                
                self.title = "It's a match"
            }, label:{
                
                Circle()
                    .fill(Color.white)
                    .frame(width: 70, height: 70)
                    .overlay(
                        Image(systemName: "heart.fill")
                            .font(.largeTitle)
                            .foregroundColor(Color(.red))
                    )
                
                
                
                
                
                
                
            })
            
            
            Button(action: {
                
                self.title = "Try another girl"
            }, label:{
                
                Circle()
                    .fill(Color.white)
                    .frame(width: 70, height: 70)
                    .overlay(
                        Image(systemName: "x.circle.fill")
                            .font(.largeTitle)
                            .foregroundColor(Color(.blue))
                    )
                
                
                
                
                
                
                
            })
            
        }
        
        
        
    }
    
   


        }
    
//}

#Preview {
    ButtonsLearn()
}
