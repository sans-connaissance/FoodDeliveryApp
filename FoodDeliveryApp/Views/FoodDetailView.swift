//
//  FoodDetail.swift
//  foodOrderingApp
//
//  Created by Eren Cem Salta on 4/6/20.
//  Copyright © 2020 Salta Inc. All rights reserved.
//

import SwiftUI

struct FoodDetailView: View {
    
    var food: Food
    
    var body: some View {
        
            
        List{
            ZStack(alignment: .bottom){
                Image(food.image)
                        .resizable()
                    .aspectRatio(contentMode: .fit)
                Rectangle()
                    .frame(height: 80)
                    .opacity(0.25)
                .blur(radius: 10)
                HStack{
                        Text(food.name)
                            .foregroundColor(.white)
                            .font(.largeTitle)
                            .fontWeight(.bold)
                            .shadow(radius: 10)
                            .padding(.leading)
                            .padding(.bottom)
                    Spacer()
                }
            }
            .listRowInsets(EdgeInsets())
            VStack {
                Text(food.description)
                    .foregroundColor(.primary)
                    .font(.body)
                    .lineLimit(nil)
                    .lineSpacing(12)
                VStack {
                    Button(action: {}){
                        Text("Order Now")
                            .foregroundColor(.white)
                            .background(Rectangle().frame(width: 200, height:60).foregroundColor(.blue).cornerRadius(15))

                    }
                }.padding(.top, 50)
                .padding(.bottom, 50)
            }.padding(.top, 20)
            
        }.edgesIgnoringSafeArea(.top)   
    }
}

struct FoodDetail_Previews: PreviewProvider {
    static var previews: some View {
        FoodDetailView(food: Menu[0])
    }
}
