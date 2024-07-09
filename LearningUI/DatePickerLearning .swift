//
//  DatePickerLearning.swift
//  LearningUI
//
//  Created by Saish Tiwari on 09/07/2024.
//

import SwiftUI

struct DatePickerLearning_: View {
    @State private var birthdate: Date = Date()
    
    var age: Int {
        let calendar = Calendar.current
        let ageComponents = calendar.dateComponents([.year], from: birthdate, to: Date())
        return ageComponents.year ?? 0
    }
    
    var body: some View {
        VStack {
            DatePicker("Choose your Birthday", selection: $birthdate, displayedComponents: [.date])
                .datePickerStyle(WheelDatePickerStyle())
            
            Text("Your age is \(age)")
        }
        .padding()
    }
}

#Preview {
    DatePickerLearning_()
}
