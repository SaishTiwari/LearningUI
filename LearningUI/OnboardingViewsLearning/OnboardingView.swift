//
//  OnboardingView.swift
//  LearningUI
//
//  Created by Saish Tiwari on 22/07/2024.
//

import SwiftUI

struct OnboardingView: View {
    /*
     Onboarding state:
     
     0 - Welcome Page
     1 - Name
     2 - Age
     3 - Gender
     
     */
    @State var onboardingstate : Int = 0
    @State var fullName : String = ""
    @State var age : Double = 18
    @State var gender :String =  ""
    var body: some View {
        ZStack{
            Spacer()
            ZStack{
                switch onboardingstate{
                case 0:
                    welcomeScreen
                    
                case 1:
                    namesection
                    
                case 2:
                    agesection
                    
                case 3:
                    gendersection
                    
                    
                default:
                    Text("Hello")
                }
                
                
            }
            VStack{
                
                Spacer()
                Spacer()
                bottombutton
                
                
                
                
                
            }
            
            
        }
    }
}

#Preview {
    OnboardingView().background(Color.purple)
}

extension OnboardingView{
    private var bottombutton : some View{
        Text("Sign in ")
            .foregroundColor(.purple)
            .frame(maxWidth:.infinity )
            .frame(height: 55)
            .background(Color.white)
        
            .cornerRadius(10)
            .padding()
            .onTapGesture {
                
            }
        
    }
    private var welcomeScreen : some View{
        VStack(spacing:40){
            Spacer()
            //  Text("Hello")
            Image(systemName: "heart.text.square.fill")
                
                .resizable()
                .scaledToFit()
                .frame(width: 200, height: 200)
                .foregroundColor(.white)
            
                
            
            Text("चौतारी: प्रेमको पहिलो कदम").foregroundColor(.white)
                .font(.largeTitle).fontWeight(.semibold)
                .overlay(Capsule(style: /*@START_MENU_TOKEN@*/.continuous/*@END_MENU_TOKEN@*/)
                    .frame(height: 3)
                    .offset(y:20)
                    .foregroundColor(.white)
                
                )
            
            Text("Nepal's #1 dating app, where finding love comes with a smile!")
                .padding(.horizontal)
                .font(.title2)
                .fontWeight(.medium)
                .multilineTextAlignment(.center)
                .foregroundColor(.white)
            
            Spacer()
            Spacer()
            
                
            
            
        }
    }
    
    
    private var namesection : some View{
        
        VStack(spacing:30){
            Spacer()
            Text("What's your name?")
                .font(.title)
                .fontWeight(/*@START_MENU_TOKEN@*/.bold/*@END_MENU_TOKEN@*/)
                .foregroundColor(.white)
            
            TextField("Enter your name", text: $fullName)
                .font(.headline)
                .frame(width: 350, height: 50)
            
                .foregroundColor(.black)
                .padding(.horizontal,10)
                .background(Color.white).cornerRadius(10)
                
            
            Spacer()
            Spacer()
        }
       
        
    }
    
    
    private var agesection : some View{
        VStack(spacing:30){
            
            Spacer()
        
        Text("What's your age?")
                .foregroundColor(.white)
                .font(.largeTitle)
                .fontWeight(.semibold)
            
                
                
                
                Text( String(format: "%.0f", age)).font(.largeTitle)
                    .fontWeight(.semibold)
                    .foregroundColor(.white)
            
         
            Slider(value: $age, in: 18...100, step: 1)
           
                
                .padding()
            
            
            Spacer()
            Spacer()
        
        
    }
    }
    
    
    
    private var gendersection : some View{
        VStack(spacing:30){
            
            Spacer()
        
            Text(gender.count>1 ? gender :"Select a gender")
                .foregroundColor(.white)
                .font(.largeTitle)
                .fontWeight(.semibold)
            
            Picker("Gender", selection: $gender) {
                Text("Male").tag(1)
                Text("Female").tag(2)
                Text("Non Binary").tag(3)
            }
            .pickerStyle(InlinePickerStyle())
            
                
              
            
            
            Spacer()
            Spacer()
        
        
    }
    }
}
