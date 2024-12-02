//
//  swiftdata_demoApp.swift
//  swiftdata-demo
//
//  Created by Dominik Zehe on 02.12.24.
//

import SwiftUI
import SwiftData

@main
struct swiftdata_demoApp: App {
    var body: some Scene {
        WindowGroup {
            ContentView()
                .modelContainer(for: DataItem.self) // if you have more datatypes you can put an array here
        }
    }
}
