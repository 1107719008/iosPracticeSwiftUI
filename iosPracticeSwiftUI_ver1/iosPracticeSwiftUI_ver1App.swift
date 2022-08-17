//
//  iosPracticeSwiftUI_ver1App.swift
//  iosPracticeSwiftUI_ver1
//
//  Created by 林君翰 on 2022/8/17.
//

import SwiftUI

@main
struct iosPracticeSwiftUI_ver1App: App {
    let persistenceController = PersistenceController.shared

    var body: some Scene {
        WindowGroup {
            ContentView()
                .environment(\.managedObjectContext, persistenceController.container.viewContext)
        }
    }
}
