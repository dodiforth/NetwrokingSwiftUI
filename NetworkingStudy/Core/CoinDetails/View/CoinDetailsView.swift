//
//  CoinDetailsView.swift
//  NetworkingStudy
//
//  Created by Dowon Kim on 03/10/2024.
//

import SwiftUI

struct CoinDetailsView: View {
    let coin: Coin
    
    var body: some View {
        Text(coin.name)
    }
}

//#Preview {
//    CoinDetailsView()
//}
