import Foundation

class CoinsViewModel: ObservableObject {
    
    @Published var coins = [Coin]()
    @Published var errorMessage: String?
    
    private let service: CoinServiceProtocol
    
    init(service: CoinServiceProtocol) {
        self.service = service
    }
    
    @MainActor
    func fetchCoins() async {
        do {
            
            let coins = try await service.fetchCoins()
            self.coins.append(contentsOf: coins)
            print("DEBUG: Did fetch coins")
            
        } catch {
            guard let error = error as? CoinAPIError else { return }
            self.errorMessage = error.customDescription
        }
    }
    
//    func fetchCoinsWithCompletionHandler() {
//        service.fetchCoinsWithResult { [weak self] result in
//            DispatchQueue.main.async {
//                switch result {
//                case .success(let coins) :
//                    self?.coins = coins
//                case .failure(let error) :
//                    self?.errorMessage = error.localizedDescription
//                }
//            }
//        }
//    }
    
}


