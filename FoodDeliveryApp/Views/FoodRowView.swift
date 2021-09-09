//
//  FoodRowView.swift
//  FoodDeliveryApp
//
//  Created by David Malicke on 9/8/21.
//

import SwiftUI

struct FoodRowView: View {
    
    var kitchenName: String
    var foods: [Food]
    
    var body: some View {
        
        VStack(alignment: .leading){
            Text(kitchenName)
                .font(.title)
                .fontWeight(.bold)
            
            ScrollView(.horizontal, showsIndicators: false) {
                
                HStack {
                    ForEach(foods, id: \.id) { food in
                        
                        NavigationLink(
                            destination: FoodDetailView(food: food)){
                            FoodItemView(food: food)
                        }.buttonStyle(PlainButtonStyle())
                    }
                }
            }
        }
    }
}

struct FoodRowView_Previews: PreviewProvider {
    static var previews: some View {
        FoodRowView(kitchenName: "Italian", foods: Menu)
    }
}
