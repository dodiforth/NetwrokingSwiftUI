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
        Text(coin.name)
    }
}

//#Preview {
//    CoinDetailsView()
//}
