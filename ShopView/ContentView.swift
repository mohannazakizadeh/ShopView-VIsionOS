//
//  ContentView.swift
//  ShopView
//
//  Created by Mohanna Zakizadeh on 3/3/24.
//

import SwiftUI
import RealityKit
import RealityKitContent

struct ContentView: View {
    
    @State var detailContentMode: DetailViewContentMode = .notSelected

    var body: some View {
        NavigationSplitView {
            ListView(viewModel: ListViewModel(detailViewContentMode: $detailContentMode))
        } detail: {
            ItemDetailView(viewModel: ItemDetailViewModel(contentMode: detailContentMode))
        }
    }
}

#Preview(windowStyle: .automatic) {
    ContentView()
}
