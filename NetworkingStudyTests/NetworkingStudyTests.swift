//
//  NetworkingStudyTests.swift
//  NetworkingStudyTests
//
//  Created by Dowon Kim on 13/10/2024.
//

import XCTest
@testable import NetworkingStudy

final class NetworkingStudyTests: XCTestCase {

    func testDecodeCoinsIntoArray() throws {
        let coins = try JSONDecoder().decode([Coin].self, from: testCoinsData)
        XCTAssertTrue(coins.count > 0)
    }

}
