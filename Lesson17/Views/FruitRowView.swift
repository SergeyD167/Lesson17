//
//  FruitRowView.swift
//  Lesson17
//
//  Created by Сергей Дятлов on 05.08.2024.
//

import SwiftUI
import FruityAPI

struct FruitRowView: View {
    var fruit: Fruits
    
    var body: some View {
        VStack(alignment: .leading) {
            Text(fruit.name)
                .font(.headline)
            Text("Genus: \(fruit.genus)")
                .font(.subheadline)
            Text("Family: \(fruit.family)")
                .font(.subheadline)
            if let order = fruit.order {
                Text("Order: \(order)")
                    .font(.subheadline)
            }
        }
        .foregroundStyle(.black)
        .padding()
        .background(Color.white)
        .cornerRadius(10)
        .shadow(radius: 5)
    }
}

#Preview {
    FruityView()
}
