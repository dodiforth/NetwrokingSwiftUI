//
//  CoinDetailsView.swift
//  NetworkingStudy
//
//  Created by Dowon Kim on 03/10/2024.
//

import SwiftUI

struct CoinDetailsView: View {
    let coin: Coin
    @ObservedObject var viewModel: CoinDetailsViewModel
//    @State private var task: Task<(), Never>?
    // Ugly way to Task and Cancel 1/2 -> uncomment this and the code below as the example
    
    init(coin: Coin) {
        self.coin = coin
        self.viewModel = CoinDetailsViewModel(coinId: coin.id)
    }
    
    var body: some View {
        
            VStack(alignment: .leading) {
                if let details = viewModel.coinDetails {
                    Text(details.name)
                        .fontWeight(.semibold)
                        .font(.subheadline)
                    
                    Text(details.symbol.uppercased())
                        .font(.footnote)
                    
                    Text(details.description.text)
                        .font(.footnote)
                        .padding(.vertical)
                }
            }
            .task {
                await viewModel.fetchCoinDetails()
            }
            // -> much much clear way to do it
        
//            .onAppear {
//                self.task = Task { await viewModel.fetchCoinDetails() }
//            }
//            .onDisappear {
//                task?.cancel()
//            }
        // Ugly way to Task and Cancel 2/2 -> uncomment this and the code above as the example

            .padding()
        
    }
}

//#Preview {
//    CoinDetailsView()
//}