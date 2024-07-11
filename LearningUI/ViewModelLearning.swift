//
//  ViewModelLearning.swift
//  LearningUI
//
//  Created by Saish Tiwari on 11/07/2024.
//

import SwiftUI


class FruitModel: ObservableObject{
    @Published var fruitList : [fruits] = [
    fruits(name: "Apple", count: 5)
    ]
    
    func DeleteFruits(indexSet : IndexSet){
        fruitList.remove(atOffsets: indexSet)
    }
    
    func MoveFruits(indices: IndexSet, newOffset : Int){
        fruitList.move(fromOffsets: indices, toOffset: newOffset)
    }
    
    func GetFruits(){
        
        let fruit1 = fruits(name: "Orange", count: 10)
        let fruit2 = fruits(name: "Apple ", count: 20)
        let fruit3 = fruits(name: "Watermelon", count:30)
        
        fruitList.append(fruit1)
        fruitList.append(fruit2)
        fruitList.append(fruit3)
    }

    
    
    
}

struct fruits: Identifiable{
    
    let id : String = UUID().uuidString
    let name : String
    let count : Int
}


struct ViewModelLearning: View {
    
   @ObservedObject var fruitModel : FruitModel = FruitModel()
  
    
    var body: some View {
        
        NavigationView{
            
            List{
                
                ForEach(fruitModel.fruitList){ fruit in
                    HStack{
                        
                        Text(fruit.name)
                        Text("\(fruit.count)")
                    }
                }
                .onDelete(perform:fruitModel.DeleteFruits)
                .onMove(perform: fruitModel.MoveFruits)

                
                   
                
            }
            .navigationBarItems(leading: EditButton())
            .navigationTitle("Fruit List")
            .onAppear(perform: {
                fruitModel.GetFruits()
            }
        )}
    }
    
    }

#Preview {
    ViewModelLearning()
}
