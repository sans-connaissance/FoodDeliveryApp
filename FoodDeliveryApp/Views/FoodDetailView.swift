//
//  FoodDetailView.swift
//  FoodDeliveryApp
//
//  Created by David Malicke on 9/8/21.
//

import SwiftUI

struct FoodDetailView: View {
    
    
    var body: some View {
        List {
            ZStack(alignment: .bottom) {
                Image("lasagna")
                    .resizable()
                    .aspectRatio(contentMode: .fit)
                Rectangle()
                    .frame(height: 80)
                    .opacity(25)
                    .blur(radius: 10)
                HStack{
                    Text("Lasagna")
                        .foregroundColor(.white)
                        .font(.largeTitle)
                        .fontWeight(.bold)
                        .shadow(radius: 10)
                        .padding(.leading)
                        .padding(.bottom)
                    Spacer()
                }
            }.listRowInsets(EdgeInsets())
            Text("Description")
                .foregroundColor(.primary)
                .font(.body)
                .lineLimit(nil)
                .lineSpacing(12)
        }
    }
}

struct FoodDetailView_Previews: PreviewProvider {
    static var previews: some View {
        FoodDetailView()
    }
}
