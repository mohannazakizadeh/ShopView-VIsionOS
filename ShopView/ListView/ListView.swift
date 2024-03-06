//
//  ListView.swift
//  ShopView
//
//  Created by Mohanna Zakizadeh on 3/5/24.
//

import SwiftUI

struct ListView: View {
    var viewModel: ListViewModel
    
    var body: some View {
        List {
            ForEach(viewModel.shoppingItems, id: \.id) { shoppingItem in
                Text(shoppingItem.name)
                    .font(.title2)
                    .onTapGesture {
                        viewModel.itemDidSelect(shoppingItem)
                    }
                    .listRowBackground(viewModel.selectedItem?.id == shoppingItem.id ? Color.gray : Color.clear)
            }
            .navigationTitle("Shop")
        }

    }
}

#Preview {
    ListView(viewModel: ListViewModel(detailViewContentMode: .constant(.notSelected)))
}
