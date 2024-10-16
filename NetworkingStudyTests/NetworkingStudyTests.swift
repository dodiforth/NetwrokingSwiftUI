//
//  NetworkingStudyTests.swift
//  NetworkingStudyTests
//
//  Created by Dowon Kim on 13/10/2024.
//

import XCTest
@testable import NetworkingStudy

final class NetworkingStudyTests: XCTestCase {

    func testDecodeCoinsIntoArray_marketCapDesc() throws {
        
        do {
            let coins = try JSONDecoder().decode([Coin].self, from: mockCoinData_marketCapDesc)
            // Ensures the coins array has coins
            XCTAssertTrue(coins.count > 0) // or         XCTAssertFalse(coins.isEmpty)
            // Ensures that all coins were decoded
            XCTAssertEqual(coins.count, 10)
            // Ensures sorting order
            XCTAssertEqual(coins, coins.sorted(by: { $0.marketCapRank < $1.marketCapRank }))
        } catch {
            XCTFail(error.localizedDescription)
        }
    }

}
