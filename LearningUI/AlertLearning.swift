//
//  AlertLearning.swift
//  LearningUI
//
//  Created by Saish Tiwari on 06/07/2024.
//

import SwiftUI

struct AlertLearning: View {
    
    @State var showAlerts : Bool = false
    @State var alertType : AlertType? = nil
    
    
    
    enum AlertType{
        case Sucess
        case Failed
    }
    
    
    
    var body: some View {
        
        
        
        Button(action: {
            
            showAlerts.toggle()
            alertType = .Sucess
            
            
        }
               
               , label: {
            Text("Click Me")
        })
        
        
        Button(action: {
            
            showAlerts.toggle()
            alertType = .Failed
            
            
        }
               
               , label: {
            Text("Click Me 2")
        })
        
        .alert(isPresented: $showAlerts, content: {
            alertShow()
        }
        )
    }
    
    func alertShow() -> Alert{
        
        switch alertType {
        case .Failed:
            return Alert(title: Text("sucessful"))
            
        case .Sucess:
           return  Alert(title:Text("Failed"))
        default:
           return  Alert(title: Text("Error"))
        }
    }
}

#Preview {
    AlertLearning()
}
