////
////  Initlearn.swift
////  LearningUI
////
////  Created by Saish Tiwari on 19/06/2024.
////
//
//import SwiftUI
//
//struct Initlearn: View {
//    let fruitColor: Color
//    let fruit : String
//    let number : Int
//
//    init( Fruit: fruits, number: Int) {
//
//
//        self.number = number
//        if(Fruit == .apple){
//            self.fruit = "Apple"
//            self.fruitColor = .red
//        }
//        else{
//            self.fruit = "Orange"
//            self.fruitColor = .orange
//
//        }
//    }
//
//    enum fruits{
//        case apple
//        case orange
//    }
//
//    var body: some View {
//        VStack{
//            Text(fruit)
//                .foregroundColor(fruitColor)
//            Text("The number of fruit is \(number)")
//        }
//
//            frame(width: 150, height: 200)
//            foregroundColor(/*@START_MENU_TOKEN@*/.blue/*@END_MENU_TOKEN@*/)
//
//    }
//}
//
//#Preview {
//    HStack{
//
//
//        Initlearn(Fruit:.orange, number: 5)
//        Initlearn(Fruit: .apple, number: 7)
//
//    }
//
//}

//
//  Initlearn.swift
//  LearningUI
//
//  Created by Saish Tiwari on 19/06/2024.
//

import SwiftUI

struct Initlearn: View {
    let fruitColor: Color
    let fruit: String
    let number: Int
    
    init(fruit: Fruit, number: Int) {
        self.number = number
        switch fruit {
        case .apple:
            self.fruit = "Apple"
            self.fruitColor = .red
        case .orange:
            self.fruit = "Orange"
            self.fruitColor = .orange
        }
    }
    
    enum Fruit {
        case apple
        case orange
    }

    var body: some View {
        VStack {
            Rectangle()
                
                Text(fruit)
                .foregroundColor(fruitColor)
            Text("The number of fruit is \(number)")
        }
        .frame(width: 150, height: 200)
        .foregroundColor(.blue)
    }
}

#Preview {
    HStack {
        Initlearn(fruit: .orange, number: 5)
        Initlearn(fruit: .apple, number: 7)
    }
}
