//
//  DoubleScrollFile.swift
//  LearningUI
//
//  Created by Saish Tiwari on 20/06/2024.
//

import SwiftUI

struct DoubleScrollFile: View {
    @State private var searchText: String = ""
    var body: some View {
        ScrollView(.vertical, showsIndicators: false){
            HStack{
                
                
                Text("NEPFLIX".uppercased())
                    .padding(.horizontal)
                
                    .fontDesign(.monospaced)
                    .font(.system(size: 30))
                
                    .foregroundColor(.red)
                    .shadow(color: Color.blue, radius: /*@START_MENU_TOKEN@*/10/*@END_MENU_TOKEN@*/)
                
                    .opacity(0.9)
                    .padding(.bottom)
                Spacer()
                
                TextField("Search Box", text:$searchText)
                               .textFieldStyle(RoundedBorderTextFieldStyle())
                               .padding()
                
                Button(action: {
                    
                 //   print("Search text: \(searchText)")
                    
                    
                    
                }
                       
                       
                       , label: {
                    Image(systemName:"magnifyingglass")
                        
                        
                        
                })
                
               
                
                
                
            }
            
            
            ScrollView(.horizontal, showsIndicators: false){
                VStack{
                    
                    HStack{
                       // Rectangle()
                        Image("Kabbadi")
                            .resizable()
                            .aspectRatio(contentMode: .fit)
                            .scaledToFit()
                            .frame(width: 370)
                            .padding(.bottom)
                            .padding(.horizontal,20)
                        
                       // Rectangle()
                        Image("Loot")
                            .resizable()
                            .aspectRatio(contentMode: .fit)
                            .scaledToFit()
                            .frame(width:370)
                            .padding(.bottom)
                            .padding(.horizontal)
                                            
                    }
                    
                }
            }
            
            
            
            VStack(spacing: 0){
                
            
                Text("Movies For You")
                    .font(.headline)
                    .fontWeight(.heavy)
                    .font(.system(size: 40))
                    .foregroundColor(Color("CustomColor"))
                    .shadow(color: .accentColor, radius: /*@START_MENU_TOKEN@*/11/*@END_MENU_TOKEN@*/)
                
                    .frame(width:.infinity, height: 40, alignment: .leading)
                    .font(.system(size: 30))
                
            }
            ScrollView(.vertical, showsIndicators: true){
                VStack{
                    ForEach(1..<10) { i in
                        ScrollView(.horizontal, showsIndicators: false, content:{
                            
                            
                            
                            HStack{
                                
                                ForEach(1..<20){ i in
                                    
                                    
                                    RoundedRectangle(cornerRadius: /*@START_MENU_TOKEN@*/25.0/*@END_MENU_TOKEN@*/)
                                        .fill(Color.white)
                                    
                                        .shadow(color: /*@START_MENU_TOKEN@*/.black/*@END_MENU_TOKEN@*/, radius: /*@START_MENU_TOKEN@*/10/*@END_MENU_TOKEN@*/)
                                        .opacity(0.3)
                                        .frame(width: 180, height: 200, alignment: .center)
                                    
                                        .padding()
                                    
                                    
                                    
                                    
                                    
                                    
                                }
                            }
                            
                            
                            
                        }
                        )    }
                }
            }
        }
    }
    
    
    
}


#Preview {
    DoubleScrollFile()
}
