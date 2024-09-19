import Foundation

class CoinsViewModel: ObservableObject {
    @Published var coin = ""
    @Published var price = ""
    
    init() {
        fetchPrice()
    }
    
    func fetchPrice() {
        
        let urlString = "https://api.coingecko.com/api/v3/simple/price?ids=bitcoin&vs_currencies=usd"
        guard let url = URL(string: urlString) else { return }
        
        print("Fetching data...")
        
        URLSession.shared.dataTask(with: url) { data, response, error in
            print("Did receive data \(data)")
        }.resume()
        
        print("Did reach end of function...")

    }
}


