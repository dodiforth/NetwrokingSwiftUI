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
    
    init(coin: Coin) {
        self.coin = coin
        self.viewModel = CoinDetailsViewModel(coinId: coin.id)
    }
    
    var body: some View {
        if let details = viewModel.coinDetails {
            VStack(alignment: .leading) {
                Text(details.name)
                    .fontWeight(.semibold)
                    .font(.subheadline)
                
                Text(details.symbol.uppercased())
                    .font(.footnote)
                
                Text(details.description.text)
                    .font(.footnote)
                    .padding(.vertical)
            }
            .padding()
        }
    }
}

//#Preview {
//    CoinDetailsView()
//}
