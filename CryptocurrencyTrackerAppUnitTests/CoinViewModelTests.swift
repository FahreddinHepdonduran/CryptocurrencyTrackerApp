//
//  CryptocurrencyTrackerAppUnitTests.swift
//  CryptocurrencyTrackerAppUnitTests
//
//  Created by fahreddin on 17.02.2022.
//

import XCTest
@testable import CryptocurrencyTrackerApp

class CoinViewModelTests: XCTestCase {
    
    var sut: CoinViewModel!
    var db: DatabaseProtocol!

    override func setUpWithError() throws {
        try super.setUpWithError()
        db = MockDatabaseManager()
    }

    override func tearDownWithError() throws {
        db = nil
        try super.tearDownWithError()
    }

    func testIfDatabaseManagerFetchDataSuccessfulyViewModelShouldPublishDataCorretly() {
        sut = CoinViewModel(database: db)
        
        XCTAssertTrue(sut.coins.count > 0)
    }

}
