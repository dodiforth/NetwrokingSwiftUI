//
//  TestData.swift
//  NetworkingStudyTests
//
//  Created by Dowon Kim on 13/10/2024.
//

import Foundation

let testCoinsData: Data = """

[
  {
    "id": "bitcoin",
    "symbol": "btc",
    "name": "Bitcoin",
    "image": "https://assets.coingecko.com/coins/images/1/large/bitcoin.png",
    "current_price": 28500,
    "market_cap": 542000000000,
    "market_cap_rank": 1,
    "fully_diluted_valuation": 600000000000,
    "total_volume": 24000000000,
    "high_24h": 28700,
    "low_24h": 28250,
    "price_change_24h": -200,
    "price_change_percentage_24h": -0.70,
    "market_cap_change_24h": -4000000000,
    "market_cap_change_percentage_24h": -0.73,
    "circulating_supply": 19000000,
    "total_supply": 21000000,
    "max_supply": 21000000,
    "ath": 69000,
    "ath_change_percentage": -58.70,
    "ath_date": "2021-11-10T00:00:00.000Z",
    "atl": 67,
    "atl_change_percentage": 42500,
    "atl_date": "2013-07-05T00:00:00.000Z",
    "last_updated": "2024-10-14T23:47:36.000Z"
  },
  {
    "id": "ethereum",
    "symbol": "eth",
    "name": "Ethereum",
    "image": "https://assets.coingecko.com/coins/images/279/large/ethereum.png",
    "current_price": 1750,
    "market_cap": 210000000000,
    "market_cap_rank": 2,
    "fully_diluted_valuation": 210000000000,
    "total_volume": 12000000000,
    "high_24h": 1780,
    "low_24h": 1725,
    "price_change_24h": -30,
    "price_change_percentage_24h": -1.68,
    "market_cap_change_24h": -3500000000,
    "market_cap_change_percentage_24h": -1.65,
    "circulating_supply": 120000000,
    "total_supply": 120000000,
    "max_supply": null,
    "ath": 4890,
    "ath_change_percentage": -64.20,
    "ath_date": "2021-11-16T00:00:00.000Z",
    "atl": 0.432979,
    "atl_change_percentage": 404612,
    "atl_date": "2015-10-20T00:00:00.000Z",
    "last_updated": "2024-10-14T23:47:36.000Z"
  },
  {
    "id": "tether",
    "symbol": "usdt",
    "name": "Tether",
    "image": "https://assets.coingecko.com/coins/images/325/large/Tether.png",
    "current_price": 1,
    "market_cap": 82871987259,
    "market_cap_rank": 3,
    "fully_diluted_valuation": 82871987259,
    "total_volume": 20491320898,
    "high_24h": 1.006,
    "low_24h": 0.998209,
    "price_change_24h": 0.00001974,
    "price_change_percentage_24h": 0.00197,
    "market_cap_change_24h": 132515606,
    "market_cap_change_percentage_24h": 0.16016,
    "circulating_supply": 82859580798.556,
    "total_supply": 82859580798.556,
    "max_supply": null,
    "ath": 1.32,
    "ath_change_percentage": -24.36,
    "ath_date": "2018-07-24T00:00:00.000Z",
    "atl": 0.572521,
    "atl_change_percentage": 74.80258,
    "atl_date": "2015-03-02T00:00:00.000Z",
    "last_updated": "2024-10-14T23:47:36.000Z"
  },
  {
    "id": "bnb",
    "symbol": "bnb",
    "name": "BNB",
    "image": "https://assets.coingecko.com/coins/images/825/large/binance-coin-logo.png",
    "current_price": 210,
    "market_cap": 30000000000,
    "market_cap_rank": 4,
    "fully_diluted_valuation": 35000000000,
    "total_volume": 800000000,
    "high_24h": 215,
    "low_24h": 207,
    "price_change_24h": -5,
    "price_change_percentage_24h": -2.32,
    "market_cap_change_24h": -700000000,
    "market_cap_change_percentage_24h": -2.29,
    "circulating_supply": 160000000,
    "total_supply": 160000000,
    "max_supply": 200000000,
    "ath": 690,
    "ath_change_percentage": -69.56,
    "ath_date": "2021-05-10T00:00:00.000Z",
    "atl": 0.09611,
    "atl_change_percentage": 218600,
    "atl_date": "2017-08-01T00:00:00.000Z",
    "last_updated": "2024-10-14T23:47:36.000Z"
  },
  {
    "id": "solana",
    "symbol": "sol",
    "name": "Solana",
    "image": "https://assets.coingecko.com/coins/images/4128/large/solana.png",
    "current_price": 24,
    "market_cap": 9000000000,
    "market_cap_rank": 5,
    "fully_diluted_valuation": 12000000000,
    "total_volume": 1200000000,
    "high_24h": 25,
    "low_24h": 23.5,
    "price_change_24h": -1,
    "price_change_percentage_24h": -3.85,
    "market_cap_change_24h": -350000000,
    "market_cap_change_percentage_24h": -3.75,
    "circulating_supply": 370000000,
    "total_supply": 500000000,
    "max_supply": 500000000,
    "ath": 260,
    "ath_change_percentage": -90.76,
    "ath_date": "2021-11-06T00:00:00.000Z",
    "atl": 0.5,
    "atl_change_percentage": 4700,
    "atl_date": "2020-05-11T00:00:00.000Z",
    "last_updated": "2024-10-14T23:47:36.000Z"
  },
  {
    "id": "bitcoin",
    "symbol": "btc",
    "name": "Bitcoin",
    "image": "https://assets.coingecko.com/coins/images/1/large/bitcoin.png",
    "current_price": 28500,
    "market_cap": 542000000000,
    "market_cap_rank": 1,
    "fully_diluted_valuation": 600000000000,
    "total_volume": 24000000000,
    "high_24h": 28700,
    "low_24h": 28250,
    "price_change_24h": -200,
    "price_change_percentage_24h": -0.70,
    "market_cap_change_24h": -4000000000,
    "market_cap_change_percentage_24h": -0.73,
    "circulating_supply": 19000000,
    "total_supply": 21000000,
    "max_supply": 21000000,
    "ath": 69000,
    "ath_change_percentage": -58.70,
    "ath_date": "2021-11-10T00:00:00.000Z",
    "atl": 67,
    "atl_change_percentage": 42500,
    "atl_date": "2013-07-05T00:00:00.000Z",
    "last_updated": "2024-10-14T23:47:36.000Z"
  },
  {
    "id": "ethereum",
    "symbol": "eth",
    "name": "Ethereum",
    "image": "https://assets.coingecko.com/coins/images/279/large/ethereum.png",
    "current_price": 1750,
    "market_cap": 210000000000,
    "market_cap_rank": 2,
    "fully_diluted_valuation": 210000000000,
    "total_volume": 12000000000,
    "high_24h": 1780,
    "low_24h": 1725,
    "price_change_24h": -30,
    "price_change_percentage_24h": -1.68,
    "market_cap_change_24h": -3500000000,
    "market_cap_change_percentage_24h": -1.65,
    "circulating_supply": 120000000,
    "total_supply": 120000000,
    "max_supply": null,
    "ath": 4890,
    "ath_change_percentage": -64.20,
    "ath_date": "2021-11-16T00:00:00.000Z",
    "atl": 0.432979,
    "atl_change_percentage": 404612,
    "atl_date": "2015-10-20T00:00:00.000Z",
    "last_updated": "2024-10-14T23:47:36.000Z"
  },
  {
    "id": "tether",
    "symbol": "usdt",
    "name": "Tether",
    "image": "https://assets.coingecko.com/coins/images/325/large/Tether.png",
    "current_price": 1,
    "market_cap": 82871987259,
    "market_cap_rank": 3,
    "fully_diluted_valuation": 82871987259,
    "total_volume": 20491320898,
    "high_24h": 1.006,
    "low_24h": 0.998209,
    "price_change_24h": 0.00001974,
    "price_change_percentage_24h": 0.00197,
    "market_cap_change_24h": 132515606,
    "market_cap_change_percentage_24h": 0.16016,
    "circulating_supply": 82859580798.556,
    "total_supply": 82859580798.556,
    "max_supply": null,
    "ath": 1.32,
    "ath_change_percentage": -24.36,
    "ath_date": "2018-07-24T00:00:00.000Z",
    "atl": 0.572521,
    "atl_change_percentage": 74.80258,
    "atl_date": "2015-03-02T00:00:00.000Z",
    "last_updated": "2024-10-14T23:47:36.000Z"
  },
  {
    "id": "bnb",
    "symbol": "bnb",
    "name": "BNB",
    "image": "https://assets.coingecko.com/coins/images/825/large/binance-coin-logo.png",
    "current_price": 210,
    "market_cap": 30000000000,
    "market_cap_rank": 4,
    "fully_diluted_valuation": 35000000000,
    "total_volume": 800000000,
    "high_24h": 215,
    "low_24h": 207,
    "price_change_24h": -5,
    "price_change_percentage_24h": -2.32,
    "market_cap_change_24h": -700000000,
    "market_cap_change_percentage_24h": -2.29,
    "circulating_supply": 160000000,
    "total_supply": 160000000,
    "max_supply": 200000000,
    "ath": 690,
    "ath_change_percentage": -69.56,
    "ath_date": "2021-05-10T00:00:00.000Z",
    "atl": 0.09611,
    "atl_change_percentage": 218600,
    "atl_date": "2017-08-01T00:00:00.000Z",
    "last_updated": "2024-10-14T23:47:36.000Z"
  },
  {
    "id": "solana",
    "symbol": "sol",
    "name": "Solana",
    "image": "https://assets.coingecko.com/coins/images/4128/large/solana.png",
    "current_price": 24,
    "market_cap": 9000000000,
    "market_cap_rank": 5,
    "fully_diluted_valuation": 12000000000,
    "total_volume": 1200000000,
    "high_24h": 25,
    "low_24h": 23.5,
    "price_change_24h": -1,
    "price_change_percentage_24h": -3.85,
    "market_cap_change_24h": -350000000,
    "market_cap_change_percentage_24h": -3.75,
    "circulating_supply": 370000000,
    "total_supply": 500000000,
    "max_supply": 500000000,
    "ath": 260,
    "ath_change_percentage": -90.76,
    "ath_date": "2021-11-06T00:00:00.000Z",
    "atl": 0.5,
    "atl_change_percentage": 4700,
    "atl_date": "2020-05-11T00:00:00.000Z",
    "last_updated": "2024-10-14T23:47:36.000Z"
  }
]

""".data(using: .utf8)!
