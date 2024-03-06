//
//  ItemDetailViewModel.swift
//  ShopView
//
//  Created by Mohanna Zakizadeh on 3/5/24.
//

import Foundation
import Observation
import Combine

@Observable
class ItemDetailViewModel {
    var contentMode: DetailViewContentMode
    init(contentMode: DetailViewContentMode) {
        self.contentMode = contentMode
    }
}

//@Observable
enum DetailViewContentMode {
    case notSelected
    case item(ShoppingItemModel)
}
