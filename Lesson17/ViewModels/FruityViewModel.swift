//
//  FruityModel.swift
//  Lesson17
//
//  Created by Сергей Дятлов on 05.08.2024.
//

import Foundation
import FruityAPI

final class FruityViewModel: ObservableObject {
    private let queue = DispatchQueue(label: "Fruity", qos: .utility, attributes: .concurrent)
    
    @Published var fruits: [Fruits] = []
    
    func getAllFruityInfo() {
        GetAllAPI.getAllFruits(apiResponseQueue: queue) { data, error in
            DispatchQueue.main.async {
                self.fruits = data ?? []
            }
        }
    }
}
