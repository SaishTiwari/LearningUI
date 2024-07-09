//
//  ActionSheetLearning.swift
//  LearningUI
//
//  Created by Saish Tiwari on 07/07/2024.
//

import SwiftUI

struct ActionSheetLearning: View {
    @State var showActionsheet : Bool = false
    @State var WhosePost : whosePost = .myPost
    
    enum whosePost{
        case myPost
        case otherPost
    }
    var body: some View {
        VStack{
            
            HStack{
                
                Circle()
                    .frame(width: 30, height: 30)
                
                
            Text("iamsaish_")
                
                Spacer()
                
                Button {
                    
                    showActionsheet.toggle()
                    
                    
                    
                } label: {
                    Image(systemName: "ellipsis")
                        .accentColor(.primary)
                }

                
               
                
                    
                
            }
            .padding()
            
            
            Rectangle()
                .aspectRatio(1.0, contentMode: .fit)
                
                
                        
                }
        
        .actionSheet(isPresented: $showActionsheet, content: getActionsheets)
        
        
       
        
        }
    
    
    
    
    
    

    
    func getActionsheets() -> ActionSheet{
        
        let button1 : ActionSheet.Button = .destructive(Text("Delete"))
        let button2 : ActionSheet.Button = .destructive(Text("Report"))
        let button3: ActionSheet.Button = .default(Text("Share"))
        let button4 : ActionSheet.Button = .cancel(Text("Cancel"))
        
        
        switch WhosePost {
        case .myPost:
            return ActionSheet(title: Text("What would you like to do?"),
                               message: nil,
                               buttons: [button3, button2, button1, button4])
        case .otherPost:
            return ActionSheet(title: Text("What would you like to do?"),
                               message: nil,
                               buttons: [button3, button2, button4])
        }
        
    }
    

    
    
    
}

#Preview {
    ActionSheetLearning()
}
