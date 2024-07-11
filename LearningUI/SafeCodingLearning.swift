//
//  SafeCodingLearning.swift
//  LearningUI
//
//  Created by Saish Tiwari on 11/07/2024.
//

import SwiftUI

struct SafeCodingLearning: View {
    @State var userId : String?
    @State var safeText : String?
    var body: some View {
        NavigationView{
            
            VStack{
                if let text = safeText{
                    Text(text)
                }
                Spacer()
                
              //  Text(safeText!)  //Using (!) we can forcefully unwrap but it's bad coding
                //    .font(.headline)
                
            
            }
            
            .navigationTitle("Safe Coding".capitalized)
        }
        .onAppear(perform: {
            //LoadData()
            LoadData2()
            
        })
    }
    
    func LoadData(){
        DispatchQueue.main.asyncAfter(deadline: .now()+3){
            safeText = "My name is Saish"
        }
    }
        
        
        func LoadData2(){
            guard let user = userId else{
                safeText = "Error"
                return
            }
            safeText = "Welcome Sir!"
        }
    
   
        
    }


#Preview {
    SafeCodingLearning()
}
