//
//  ListViewModel.swift
//  ShopView
//
//  Created by Mohanna Zakizadeh on 3/5/24.
//

import Foundation
import SwiftUI

final class ListViewModel: ObservableObject {
    @Published var shoppingItems: [ShoppingItemModel]
    @Binding var detailViewContentMode: DetailViewContentMode
    @Published var selectedItem: ShoppingItemModel?
    
    init(detailViewContentMode: Binding<DetailViewContentMode>) {
        self.shoppingItems = DataLoader().loadItems()
        self._detailViewContentMode = detailViewContentMode
    }
    
    func itemDidSelect(_ item: ShoppingItemModel) {
        selectedItem = item
        detailViewContentMode = .item(item)
    }
}

final class DataLoader {
    func loadItems() -> [ShoppingItemModel] {
        guard let url = Bundle.main.url(forResource: "items_data", withExtension: "json") else {
            print("Items data file not found.")
            return []
        }
        do {
            let data = try Data(contentsOf: url)
            let items = try JSONDecoder().decode([ShoppingItemModel].self, from: data)
            return items
        } catch {
            return []
        }
    }
}
