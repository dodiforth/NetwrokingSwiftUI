//
//  ContentView.swift
//  NetworkingStudy
//
//  Created by Dowon Kim on 03/09/2024.
//

import SwiftUI

struct ContentView: View {
    private let service: CoinServiceProtocol
    @StateObject var viewModel: CoinsViewModel
    
    init(service: CoinServiceProtocol) {
        self.service = service
        self._viewModel = StateObject(wrappedValue: CoinsViewModel(service: service))
    }
    
    var body: some View {
        NavigationStack {
            List {
                ForEach(viewModel.coins) {
                    coin in
                    NavigationLink(value: coin) {
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
            .navigationDestination(for: Coin.self, destination: { coin in
                CoinDetailsView(coin: coin, service: service)
            })
            .overlay {
                if let error = viewModel.errorMessage {
                    Text(error)
                }
            }
        }
    }
}

#Preview {
    ContentView(service: MockCoinService())
}
