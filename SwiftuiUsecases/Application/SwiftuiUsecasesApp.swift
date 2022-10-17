//
//  SwiftuiUsecasesApp.swift
//  SwiftuiUsecases
//
//  Created by Danyl Timofeyev on 17.10.2022.
//

import SwiftUI

@main
struct SwiftuiUsecasesApp: App {
    
    @Environment(\.scenePhase) private var scenePhase
    
    let persistenceController = PersistenceController.shared

    var body: some Scene {
        WindowGroup {
            ExampleView()
                .environment(\.managedObjectContext, persistenceController.container.viewContext)
        }
        .onChange(of: scenePhase) { newValue in
            switch newValue {
            case .active: print("Active")
            case .inactive: print("Inactive")
            case .background: print("Background")
            default: print("Uknown phase")
            }
        }
    }
}
