//
//  CustomModelLearning.swift
//  LearningUI
//
//  Created by Saish Tiwari on 11/07/2024.
//

import SwiftUI

struct UserModel: Identifiable{
    let id : String = UUID().uuidString
    let username : String
    let follower : Int
    let isVerified : Bool
}

struct CustomModelLearning: View {
    @State var User : [UserModel] = [
        UserModel(username: "iamsaish_", follower: 1000, isVerified: true),
        UserModel(username: "_nishansapkota",follower: 550, isVerified: false),
        UserModel(username: "philfoden47", follower: 300000, isVerified: true)
        
    ]
    var body: some View {
        
        NavigationView{
            
            List{
                
                ForEach(User){user in
                    
                    HStack{
                        
                        Circle().frame(height:40)
                        Text(user.username)
                            .font(.headline)
                        Image(systemName: user.isVerified ? "checkmark.seal.fill" : "")
                        
                        
                        Spacer()
                        VStack{
                            Text("\(user.follower)")
                            Text("Followers").font(.caption).foregroundColor(.gray)
                            
                            
                        }
                            
                            
                        }
                    
                    }
                
                    
                    
                    
                    
                    
                }
                
                .navigationTitle("Instagram Users")
                
            }
        
            
        }
    }


#Preview {
    CustomModelLearning()
}
