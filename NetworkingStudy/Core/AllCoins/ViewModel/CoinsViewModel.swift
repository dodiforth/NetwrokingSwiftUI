import Foundation

class CoinsViewModel: ObservableObject {
    @Published var coin = ""
    @Published var price = ""
    @Published var errorMessage: String?
    
    init() {
        fetchPrice(coin: "bitcoin")
    }
    
    func fetchPrice(coin: String) {
        let urlString = "https://ap.coingecko.com/api/v3/simple/price?ids=\(coin)&vs_currencies=usd"
        // intentially delete "i" to test error message from "https://api"
        guard let url = URL(string: urlString) else { return }
                
        URLSession.shared.dataTask(with: url) { data, response, error in
            
            DispatchQueue.main.async {
//                if let error = error {
//                    print("DEBUG: Failed with error \(error.localizedDescription)")
//                    self.errorMessage = error.localizedDescription
//                    return
//                }
                
                guard let httpResponse = response as? HTTPURLResponse else {
                    self.errorMessage = "Bad HTTP Response"
                    return
                }
                
                guard httpResponse.statusCode == 200 else {
                    self.errorMessage = "Failed to fetch with status code \(httpResponse.statusCode)"
                    return
                }
                
                print("DEBUG: Reponse code is \(httpResponse.statusCode)")
                
                guard let data = data else { return }
                guard let jsonObject = try? JSONSerialization.jsonObject(with: data) as? [String: Any] else { return }
                guard let value = jsonObject[coin] as? [String: Double] else { print("Failed to parse value")
                    return
                }
                guard let price = value["usd"] else { return }
                
                self.coin = coin.capitalized
                self.price = "$\(price)"
            }
            //-> This is really really light operations so I just group all in main thread also it's just for testing purpose
        }.resume()
    }
}


