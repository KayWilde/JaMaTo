//
//  JaMaToApp.swift
//  JaMaTo
//
//  Created by Kay Wilde on 15.12.24.
//

import SwiftUI
import SwiftData

@main
struct JaMaToApp: App {
    var sharedModelContainer: ModelContainer
    
        init() {
            do {
                let appPreferences = ModelConfiguration(schema: Schema([ Preference.self, ]), isStoredInMemoryOnly: false)
                let appItems = ModelConfiguration(schema: Schema([ Item.self, ]), isStoredInMemoryOnly: false)
                
                sharedModelContainer = try ModelContainer(for: Preference.self, Item.self, configurations: appPreferences, appItems)
            } catch {
                fatalError("Failed to configure SwiftData container.")
            }
        }

    var body: some Scene {
        WindowGroup {
            SplashScreenView()
        }
        .modelContainer(sharedModelContainer)
    }
}
