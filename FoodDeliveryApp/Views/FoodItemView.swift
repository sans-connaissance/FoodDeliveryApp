//
//  FoodItemView.swift
//  FoodDeliveryApp
//
//  Created by David Malicke on 9/6/21.
//

import SwiftUI

struct FoodItemView: View {
    var body: some View {
        VStack(alignment:.leading) {
            Image("lasagna")
                .resizable()
                .aspectRatio(contentMode: .fit)
                .frame(height: 200)
                .cornerRadius(10)
                .shadow(radius: 5)
            
            VStack(alignment: .leading) {
                Text("Lasagna")
                    .font(.title)
                    .foregroundColor(.primary)
                Text("Description")
                    .font(.subheadline)
                    .lineLimit(2)
                    .foregroundColor(.primary)
            }
        }
        .frame(width: 300)
        .padding(.leading, 10)
        .padding(.trailing, 10)
    }
}

struct FoodItemView_Previews: PreviewProvider {
    static var previews: some View {
        FoodItemView()
    }
}
