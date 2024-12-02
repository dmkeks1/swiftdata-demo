//
//  Untitled.swift
//  swiftdata-demo
//
//  Created by Dominik Zehe on 02.12.24.
//

import Foundation
import SwiftData



@Model
class DataItem: Identifiable {
    var id: String
    var creationDate: Date
    
    init() {
        id = UUID().uuidString
        creationDate = Date()
    }
}
