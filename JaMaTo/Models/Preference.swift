//
//  Preference.swift
//  JaMaTo
//
//  Created by Kay Wilde on 15.12.24.
//

import Foundation
import SwiftData

@Model
final class Preference {
    var setupDone: Bool
    
    init(setupDone: Bool) {
        self.setupDone = false
    }
}
