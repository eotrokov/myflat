//
//  MyFlatApp.swift
//  MyFlat
//
//  Created by e.otrokov on 21.11.2021.
//

import SwiftUI

@main
struct MyFlatApp: App {
    let persistenceController = PersistenceController.shared

    var body: some Scene {
        WindowGroup {
            MainView()
                .environment(\.managedObjectContext, persistenceController.container.viewContext)
        }
    }
}
