//
//  ItemDetailView.swift
//  ShopView
//
//  Created by Mohanna Zakizadeh on 3/5/24.
//

import SwiftUI
import _RealityKit_SwiftUI


struct ItemDetailView: View {
    var viewModel: ItemDetailViewModel
    var body: some View {
        switch viewModel.contentMode {
        case .notSelected:
            Text("Select an item :)")
        case .item(let shoppingItemModel):
            VStack(alignment: .center, spacing: 20) {
                Model3D(named: shoppingItemModel.name.replacingOccurrences(of: " ", with: "")) { model in
                    model
                        .resizable()
                        .aspectRatio(contentMode: .fit)
                } placeholder: {
                    ProgressView()
                }
                .padding()
                Spacer()
                HStack {
                    Spacer()
                    Text("Price: \(shoppingItemModel.price) €")
                        .padding()
                        .foregroundStyle(Color.white)
                        .background()
                    .clipShape(RoundedRectangle(cornerRadius: 10))
                }
            }
            .navigationTitle(shoppingItemModel.name)
            .padding()
            
        }
    }
}

#Preview {
    ItemDetailView(viewModel: ItemDetailViewModel(contentMode: .item(ShoppingItemModel(id: 1, name: "TV Retro", price: 1000))))
}
