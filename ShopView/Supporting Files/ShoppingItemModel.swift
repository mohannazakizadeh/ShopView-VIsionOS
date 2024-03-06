//
//  ShoppingItemModel.swift
//  ShopView
//
//  Created by Mohanna Zakizadeh on 3/5/24.
//

import Foundation

struct ShoppingItemModel: Decodable, Identifiable {
    let id: Int
    let name: String
    let price: Int
}
