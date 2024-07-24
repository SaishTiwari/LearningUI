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
    @State var onboardingstate : Int = 3
    @State var fullName : String = ""
    @State var age : Double = 18
    @State var gender :String =  ""
    @State var showAlert : Bool = false
    @State var showAlert2 : Bool = false

    @State var alertTitle : String = ""
    let transition : AnyTransition = .asymmetric(insertion: .move(edge: .trailing), removal: .move(edge: .leading))
    var body: some View {
        ZStack{
            Spacer()
            ZStack{
                switch onboardingstate{
                case 0:
                    welcomeScreen
                        .transition(transition)
                    
                case 1:
                    namesection
                        .transition(transition)

                    
                case 2:
                    agesection
                        .transition(transition)

                    
                case 3:
                    gendersection                        .transition(transition)

                    
                    
                default:
                    Text("Hello")
                }
                
                
            }
            VStack{
                
                Spacer()
                Spacer()
                Spacer()
                
                loginRedirectory
                Spacer()
                bottombutton
                
                
                
                
                
            }
            
            
        }
        .alert(isPresented: $showAlert, content: {
            return Alert(title: Text(alertTitle), dismissButton: .cancel())
        })
        
        .alert(isPresented: $showAlert2, content: {
            return Alert(title: Text(alertTitle), dismissButton: .cancel(Text("Confirm")))
        })
    }
}

#Preview {
    OnboardingView().background(Color.purple)
}

extension OnboardingView{
    
    
    private var loginRedirectory : some View{
        
        VStack(spacing: -15) {
            
            
            
        }
        .padding(5)
    }

               
            
                    
        
        
    
    private var bottombutton : some View{
       Text (onboardingstate == 0 ? "SIGN UP" : onboardingstate == 3 ? "FINISH" : "Next")
            .foregroundColor(.purple)
            .frame(maxWidth:.infinity )
            .frame(height: 55)
            .background(Color.white)
        
            .cornerRadius(10)
            .padding()
            .onTapGesture {
                handleNextButton()
            }
        
    }
    private var welcomeScreen : some View{
        VStack(spacing:5){
            Spacer()
            Spacer()
            
            
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
            
            //  Text("Hello")
            Image(systemName: "tree.fill")
            
                .resizable()
                .scaledToFit()
                .frame(width: 200, height: 175)
                .foregroundColor(.green)
            
                .padding()
            
                Spacer()
            
            VStack(spacing:-20) {
                RoundedRectangle(cornerRadius: 20)
                    .frame(maxWidth: .infinity)
                    .frame(height: 55)
                    .padding()
                    .overlay(HStack{
                        Image(systemName: "apple.logo").resizable().scaledToFit() .foregroundColor(.white).frame(width: 20)
                        Text("Continue with Apple").foregroundColor(.purple)
                        
                        
                    })
                
                
                
                RoundedRectangle(cornerRadius: 20).foregroundColor(.blue)
                    .frame(maxWidth: .infinity)
                    .frame(height: 55)
                    .padding()
                    .overlay(HStack{
                        Image(systemName: "f.circle.fill").resizable().scaledToFit().foregroundColor(.white).frame(width: 20)
                        Text("Continue with Facebook").foregroundColor(.white)
                        
                        
                    })
                
                
                RoundedRectangle(cornerRadius: 20)
                    .frame(maxWidth: .infinity)
                    .frame(height: 55)
                    .padding()
                    .overlay(HStack{
                        Image(systemName: "phone.circle.fill").resizable().scaledToFit().foregroundColor(.white).frame(width: 20)
                        Text("Use cell phone number").foregroundColor(.purple)
                        
                    })
            }
        

            
            
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
            
                //.foregroundColor(.gray)
                .padding(.horizontal,10)
                .background(Color.white
                    ).cornerRadius(10)
                .foregroundColor(.black)
                
            
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
        
            Text("What's your gender?")
                .foregroundColor(.white)
                .font(.largeTitle)
                .fontWeight(.semibold)
            
            Picker(selection: $gender) {
                Text("Male").tag(1)
                Text("Female").tag(2)
                Text("Non Binary").tag(3)
            } label: {
                Text( gender.count>1 ? gender : "Choose your gender")
            }

               
            
            .pickerStyle(MenuPickerStyle())
                
              
            
            
            Spacer()
            Spacer()
        
        
    }
    }
}

//Functions:
extension OnboardingView{
    
    func handleNextButton(){
        
        switch onboardingstate{
        case 1:
            
            guard fullName.count > 3 else{
                alertTitle = "Your name must be atleast three characters long"
                showAlert.toggle()
                return
            }
            
     
            
            
        case 3:
            
            guard gender.count > 1 else{
                alertTitle = "You must select a gender"
                showAlert.toggle()
                return
            }
            
            
            
            
            
        default :
            break
        
        }
        
        if onboardingstate == 3{
           //code
        }
        else{
            
        
        withAnimation(.spring()){
            onboardingstate += 1
        }
    }
    }
    
}
