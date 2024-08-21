//
//  Dish.swift
//  QuickBite
//
//  Created by HUSSAM on 21/8/24.
//

import Foundation

struct Dish {
    let id, name, description, image: String?
    let price: Int?
    
    var formattedPrice: String {
        return "\(price ?? 0) SDG "
    }
}
