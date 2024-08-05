//
//  FruitDetailView.swift
//  Lesson17
//
//  Created by Сергей Дятлов on 06.08.2024.
//

import SwiftUI
import FruityAPI

struct FruitDetailView: View {
    var fruit: Fruits
    
    var body: some View {
        VStack(alignment: .leading, spacing: 15) {
            Text(fruit.name)
                .font(.largeTitle)
                .foregroundColor(.black)
                .padding(.bottom, 10)
            Text("Genus: \(fruit.genus)")
                .font(.title2)
                .foregroundColor(.black)
            Text("Family: \(fruit.family)")
                .font(.title3)
                .foregroundColor(.black)
            if let order = fruit.order {
                Text("Order: \(order)")
                    .font(.title3)
                    .foregroundColor(.black)
            }
            if let nutritions = fruit.nutritions {
                VStack(alignment: .leading, spacing: 10) {
                    Text("Nutritional Information:")
                        .font(.title2)
                        .foregroundColor(.black)
                    HStack {
                        VStack(alignment: .leading) {
                            Text("Carbs: \(nutritions.carbohydrates ?? 0, specifier: "%.2f") g")
                            Text("Protein: \(nutritions.protein ?? 0, specifier: "%.2f") g")
                            Text("Fat: \(nutritions.fat ?? 0, specifier: "%.2f") g")
                        }
                        Spacer()
                        VStack(alignment: .leading) {
                            Text("Calories: \(nutritions.calories ?? 0, specifier: "%.2f") kcal")
                            Text("Sugar: \(nutritions.sugar ?? 0, specifier: "%.2f") g")
                        }
                    }
                }
                .padding(.top, 10)
            }
            Spacer()
        }
        .padding()
        .background(Color.white)
        .cornerRadius(10)
        .shadow(radius: 10)
        .navigationTitle("Fruit Detail")
    }
}
