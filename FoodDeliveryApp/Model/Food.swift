//
//  Food.swift
//  FoodDeliveryApp
//
//  Created by David Malicke on 9/6/21.
//

import Foundation
import SwiftUI

struct Food: Hashable, Codable, Identifiable {
    
    var id: Int
    var name: String
    var image: String
    var kitchen: Kitchen
    var description: String
    
    
    enum Kitchen: String, CaseIterable, Codable, Hashable {
        
        case italian = "Italian"
        case chinese = "Chinese"
    }
    
}
