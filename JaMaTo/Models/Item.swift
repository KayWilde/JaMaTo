//
//  Item.swift
//  JaMaTo
//
//  Created by Kay Wilde on 15.12.24.
//

import Foundation
import SwiftData

@Model
final class Item {
    var timestamp: Date
    
    init(timestamp: Date) {
        self.timestamp = timestamp
    }
}
