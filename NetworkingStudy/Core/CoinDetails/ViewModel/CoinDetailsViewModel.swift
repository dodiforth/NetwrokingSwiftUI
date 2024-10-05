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
    
    @Published var coinDetails: CoinDetails?
    
    init(coinId: String) {
        print("DEBUG : Did CoinDetailsViewModel Init?")
        self.coinId = coinId
    }
    
    @MainActor
    func fetchCoinDetails() async {
        print("DEBUG: Fetching Coins")
        try? await Task.sleep(nanoseconds: 2_000_000_000)
        print("DEBUG: Task woke up")
        
        do {
            let details = try await service.fetchCoinDetails(id: coinId)
            print("DEBUG: Details \(details)")
            self.coinDetails = details
        } catch {
            print("DEBUG: Error \(error.localizedDescription)")
        }
    }
    
}
