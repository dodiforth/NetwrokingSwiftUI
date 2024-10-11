//
//  CoinDetails.swift
//  NetworkingStudy
//
//  Created by Dowon Kim on 03/10/2024.
//

import Foundation

struct CoinDetails: Codable {
    let id: String
    let symbol: String
    let name: String
    let description: Description
}

struct Description: Codable {
    let text: String
    
    enum CodingKeys: String, CodingKey {
        case text = "en"
    }
}

