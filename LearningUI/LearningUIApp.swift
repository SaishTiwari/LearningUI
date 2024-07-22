//
//  LearningUIApp.swift
//  LearningUI
//
//  Created by Saish Tiwari on 16/06/2024.
//

import SwiftUI
import SwiftData // Verify if this should be CoreData or another framework

@main
struct LearningUIApp: App {
    var sharedModelContainer: ModelContainer = {
        // Define the schema with the Item model
        let schema = Schema([
            Item.self,
        ])
        
        // Configure the model container for persistent storage
        let modelConfiguration = ModelConfiguration(schema: schema, isStoredInMemoryOnly: false)

        do {
            // Attempt to create and return the ModelContainer
            return try ModelContainer(for: schema, configurations: [modelConfiguration])
        } catch {
            // Provide detailed error message
            fatalError("Could not create ModelContainer: \(error.localizedDescription)")
        }
    }()

    var body: some Scene {
        WindowGroup {
            // Display the main view of the app
            AppStorageLearning()
        }
        // Attach the model container to the scene
        .modelContainer(sharedModelContainer)
    }
}
