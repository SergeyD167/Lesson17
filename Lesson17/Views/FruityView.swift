//
//  ContentView.swift
//  Lesson17
//
//  Created by Сергей Дятлов on 05.08.2024.
//

import SwiftUI
import FruityAPI

struct FruityView: View {
    @StateObject private var viewModel = FruityViewModel()
    
    let columns = [
        GridItem(.flexible())
    ]
    
    var body: some View {
        NavigationView {
            ScrollView {
                LazyVGrid(columns: columns, spacing: 20) {
                    ForEach(viewModel.fruits, id: \.id) { fruit in
                        NavigationLink(destination: FruitDetailView(fruit: fruit)) {
                            FruitRowView(fruit: fruit)
                        }
                    }
                }
                .padding()
            }
            .navigationTitle("Fruits")
            .onAppear {
                viewModel.getAllFruityInfo()
            }
        }
    }
}

#Preview {
    FruityView()
}
