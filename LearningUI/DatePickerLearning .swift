//
//  DatePickerLearning.swift
//  LearningUI
//
//  Created by Saish Tiwari on 09/07/2024.
//

import SwiftUI

struct DatePickerLearning_: View {
    @State var showAlert : Bool = false
    @State private var birthdate: Date = Date()
    
    var age: Int {
        let calendar = Calendar.current
        let ageComponents = calendar.dateComponents([.year], from: birthdate, to: Date())
        return ageComponents.year ?? 0
    }
    
    var body: some View {
        VStack {
            Text("Choose your birthday").font(.headline)
            DatePicker(" ",selection: $birthdate, displayedComponents: [.date])
                .datePickerStyle(WheelDatePickerStyle())
                .padding()
            
            Text("Save".uppercased())
                .foregroundColor(.white)
                .padding()
                
                .background(Color.blue)
                .cornerRadius(10)
                .onTapGesture {
                    showAlert.toggle()
                }
                
            
        }
        
        .padding()
        .alert(isPresented: $showAlert, content: {
            Alert(title: Text("You're \(age) years old"),
                  message: Text("This cannot be changed"), dismissButton: .cancel(Text("Confirm".uppercased())))

        })
       
    }
    
}

#Preview {
    DatePickerLearning_()
}
