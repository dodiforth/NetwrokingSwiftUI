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
                HStack {
                    Text("\(coin.marketCapRank)").foregroundStyle(Color.gray)
                    
                    VStack(alignment: .leading, spacing: 4) {
                        Text(coin.name).fontWeight(.semibold)
                        Text(coin.symbol.uppercased())
                    }
                }.font(.footnote)
            }
        }
    }
}

#Preview {
    ContentView()
}
