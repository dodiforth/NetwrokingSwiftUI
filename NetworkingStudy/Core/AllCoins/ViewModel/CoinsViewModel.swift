import Foundation

class CoinsViewModel: ObservableObject {
    
    @Published var coins = [Coin]()
    @Published var errorMessage: String?
    
    private let service = CoinDataService()
    
    init() {
        fetchCoins()
    }
    
    func fetchCoins() {
//        service.fetchCoins { coins, error in
//                DispatchQueue.main.async {
//                    if let error = error {
//                        self.errorMessage = error.localizedDescription
//                        return
//                    }
//                    
//                    self.coins = coins ?? []
//                }
//            }
        //-> without using Result type
        service.fetchCoinsWithResult { [weak self] result in
            DispatchQueue.main.async {
                switch result {
                case .success(let coins) :
                    self?.coins = coins
                case .failure(let error) :
                    self?.errorMessage = error.localizedDescription
                }
            }
        }
    }
    
}


