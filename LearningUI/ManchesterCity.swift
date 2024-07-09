//
//  ManchesterCity.swift
//  LearningUI
//
//  Created by Saish Tiwari on 06/07/2024.
//

import SwiftUI

struct ManchesterCity: View {
    
    @State var GoalKeppers : [String] = ["Ederson", "Ortega Moreno",
                                         "Scott Carson"
    
    ]
    
    var body: some View {
        
        NavigationView{
            
            List{
                
                Section(header: Text("GoalKeepers").font(.headline)) {
                    
                    ForEach(GoalKeppers, id: \.self){keepers in
                        
                        Text(keepers)
                        
                    }
                    
                    
                    .onDelete(perform: Delete)
                       
                        
                    
                    
                    .onMove(perform: Move)
                        
                        
                            
                        
                    
                    
                    
                    
                }
                
                .listStyle(InsetListStyle())
                
                
            
            }
            
            
            .navigationTitle("Manchester City")
            .navigationBarItems(leading: EditButton())
        
            
            
        }
    }
    
    func Delete(indexSet : IndexSet){
        GoalKeppers.remove(atOffsets: indexSet)
        
    }
    
    func Move(indices : IndexSet , newOffset : Int){
        GoalKeppers.move(fromOffsets: indices, toOffset: newOffset)
    }
}

#Preview {
    ManchesterCity()
}
