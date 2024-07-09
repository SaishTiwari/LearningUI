//
//  TabViewLearn.swift
//  LearningUI
//
//  Created by Saish Tiwari on 09/07/2024.
//

import SwiftUI

struct TabViewLearn: View {
    @State var selectTab : Int = 0
    var body: some View {
        
      
           
        TabView(selection: $selectTab ) {
              
              HomeView()
                  .tabItem {
                      Image(systemName: "house.fill")
                      Text("Home")
                  }
                  .tag(0)
              
              Text("Browse Page")
                  .foregroundColor(.green)
                  .font(.headline)
              
                  .tabItem {
                  Image(systemName: "globe")
                  Text("Browse")
              }
                  .tag(1)
              
              Text("Profile Page")
                  .foregroundColor(.green)
                  .font(.headline)
              
                  .tabItem {
                  Image(systemName: "person.fill")
                  Text("Profile")
              }
                  .tag(2)
              
                  

            
            }
        .accentColor(.red)
        }
    }
    


#Preview {
    TabViewLearn()
}

struct HomeView: View {
    var body: some View {
        ZStack{
            Color.green.opacity(0.3)
                .ignoresSafeArea(.all, edges: .top)
            
            Text("Home Page")
            
        }
        
        
        .foregroundColor(.green)
        .font(.headline)
        
       
    }
}
