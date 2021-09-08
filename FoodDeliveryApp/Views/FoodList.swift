//
//  ContentView.swift
//  FoodDeliveryApp
//
//  Created by David Malicke on 9/6/21.
//

import SwiftUI

struct FoodList: View {
    var categories: [String: [Food]] {
        .init(
            grouping: Menu,
            by: {$0.kitchen.rawValue}
        )
    }
    
    
    var body: some View {
        NavigationView {
            List(categories.keys.sorted(), id: \String.self){ key in
                FoodRowView(kitchenName: "\(key)", foods: categories[key]!)
                    .frame(height: 350)
                    .padding(.top)
                    .padding(.bottom)
            }.navigationBarTitle("Food Delivery")
            
        }
    }
}

