//
//  PawsApp.swift
//  Paws
//
//  Created by Thiago Serrão Braule Pinto on 9/11/25.
//

import SwiftUI
import SwiftData

@main
struct PawsApp: App {
    var body: some Scene {
        WindowGroup {
            ContentView()
                .modelContainer(for: Pet.self)
        }
    }
}
