//
//  CoinDetailsViewModel.swift
//  NetworkingStudy
//
//  Created by Dowon Kim on 03/10/2024.
//

import Foundation

class CoinDetailsViewModel: ObservableObject {
    
    private let service = CoinDataService()
    private let coinId: String
    
    init(coinId: String) {
        self.coinId = coinId
        
        Task { await fetchCoinDetails() }
    }
    
    func fetchCoinDetails() async {
        do {
            let details = try await service.fetchCoinDetails(id: coinId)
            print("DEBUG: Details \(details)")
        } catch {
            print("DEBUG: Error \(error.localizedDescription)")
        }
    }
    
}
