//
//  Pet.swift
//  Paws
//
//  Created by Thiago Serrão Braule Pinto on 9/11/25.
//

import Foundation
import SwiftData

@Model
final class Pet{
    var name: String
    @Attribute(.externalStorage) var photo: Data?
    
    init(name: String, photo: Data? = nil) {
        self.name = name
        self.photo = photo
    }
}

extension Pet{
    @MainActor
    static var preview: ModelContainer{
        let configuration = ModelConfiguration(isStoredInMemoryOnly: true)
        let container = try! ModelContainer(for:Pet.self, configurations: configuration)
        
        container.mainContext.insert(Pet(name: "Rex"))
        container.mainContext.insert(Pet(name: "Bella"))
        container.mainContext.insert(Pet(name: "Charlie"))
        container.mainContext.insert(Pet(name: "Daisy"))
        container.mainContext.insert(Pet(name: "Fido"))
        container.mainContext.insert(Pet(name: "Max"))
        container.mainContext.insert(Pet(name: "Cherrie"))
        container.mainContext.insert(Pet(name: "Honeys"))
        return container
    }
}
