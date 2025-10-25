//
//  Product.swift
//  ShoppingCart
//
//  Created by Dilnaz Zhussipbekova on 23.10.2025.
//

import Foundation

struct Product {
    enum Category {
        case cosmetics, skincare, perfume, accessories
    }
    
    let id: String
    let name: String
    let price: Double
    let category: Category
    let description: String
    
    var displayPrice: String {
        String(format: "$%.2f", price)
    }
    
    init?(id: String, name: String, price: Double, category: Category, description: String) {
        guard price > 0 else { return nil }
        self.id = id
        self.name = name
        self.price = price
        self.category = category
        self.description = description
    }
}
