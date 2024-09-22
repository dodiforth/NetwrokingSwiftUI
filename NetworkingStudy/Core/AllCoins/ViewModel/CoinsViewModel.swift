import Foundation

class CoinsViewModel: ObservableObject {
    
    @Published var coins = [Coin]()
    
    private let service = CoinDataService()
    
    init() {
        fetchCoins()
    }
    
    func fetchCoins() {
        service.fetchCoins { coins in
            for coin in coins {
                print("DEBUG: Coin in view model is \(coin.name)")
                DispatchQueue.main.async {
                    self.coins = coins
                }
            }
        }
    }
    
}


