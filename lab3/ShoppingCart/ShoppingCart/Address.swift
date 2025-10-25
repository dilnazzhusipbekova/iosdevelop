//
//  Address.swift
//  ShoppingCart
//
//  Created by Dilnaz Zhussipbekova on 23.10.2025.
//

import Foundation

struct Address {
    let street: String
    let city: String
    let zipCode: String
    let country: String
    
    var formattedAddress: String {
        "\(street)\n\(city)\n\(zipCode)\n\(country)"
    }
}
