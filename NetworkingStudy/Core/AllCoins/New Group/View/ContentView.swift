//
//  ContentView.swift
//  NetworkingStudy
//
//  Created by Dowon Kim on 03/09/2024.
//

import SwiftUI

struct ContentView: View {
    
    @StateObject var viewModel = CoinsViewModel()
    
    var body: some View {
        List {
            ForEach(viewModel.coins) {
                coin in
                Text(coin.name)
            }
        }
    }
}

#Preview {
    ContentView()
}
