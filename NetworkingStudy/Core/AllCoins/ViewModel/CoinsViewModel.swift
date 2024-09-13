//
//  CoinsViewModel.swift
//  NetworkingStudy
//
//  Created by Dowon Kim on 03/09/2024.
//

import Foundation

@MainActor
class CoinsViewModel: ObservableObject {
    
    @Published var coin = ""
    @Published var price = ""
    
    // This class is a view model for handling coin price data
    // It's marked with @MainActor to ensure all its code runs on the main thread
    // It conforms to ObservableObject, allowing SwiftUI views to observe and react to its changes
    
    // These @Published properties will automatically notify observers when they change
    
    init() async {
        // The initializer is marked as async to allow calling the async fetchPrice() method
        await fetchPrice()
    }
    
    func fetchPrice() async {
        // This function fetches the price of a coin (litecoin) in EUR from the CoinGecko API
        
        // Construct the base URL
        guard let url = URL(string: "https://api.coingecko.com/api/v3/simple/price") else { return }
        
        // Create URL components for adding query parameters
        var components = URLComponents(url: url, resolvingAgainstBaseURL: true)!
        
        // Define query parameters
        let queryItems: [URLQueryItem] = [
          URLQueryItem(name: "ids", value: "litecoin"),
          URLQueryItem(name: "vs_currencies", value: "eur"),
        ]
        
        // Add query parameters to the URL components
        components.queryItems = components.queryItems.map { $0 + queryItems } ?? queryItems

        // Create a URLRequest with the final URL
        var request = URLRequest(url: components.url!)
        request.httpMethod = "GET"
        request.timeoutInterval = 10
        request.allHTTPHeaderFields = ["accept": "application/json"]
        
        do {
            // Perform the network request
            let (data, _) = try await URLSession.shared.data(for: request)
            
            // Print the received data as a string (for debugging purposes)
            print(String(decoding: data, as: UTF8.self))
            
            // TODO: Parse the JSON data and update the @Published properties
        } catch {
            // Handle any errors that occur during the network request
            print("Error fetching price: \(error)")
        }
    }
}


/*

 let url = URL(string: "https://api.coingecko.com/api/v3/simple/price")!
 var components = URLComponents(url: url, resolvingAgainstBaseURL: true)!
 let queryItems: [URLQueryItem] = [
   URLQueryItem(name: "ids", value: "litecoin"),
   URLQueryItem(name: "vs_currencies", value: "eur"),
 ]
 components.queryItems = components.queryItems.map { $0 + queryItems } ?? queryItems

 var request = URLRequest(url: components.url!)
 request.httpMethod = "GET"
 request.timeoutInterval = 10
 request.allHTTPHeaderFields = ["accept": "application/json"]

 let (data, _) = try await URLSession.shared.data(for: request)
 print(String(decoding: data, as: UTF8.self))
 
 
 */
