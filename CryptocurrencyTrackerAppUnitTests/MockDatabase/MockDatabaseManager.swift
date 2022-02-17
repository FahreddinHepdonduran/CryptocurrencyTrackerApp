//
//  MockDatabase.swift
//  CryptocurrencyTrackerAppUnitTests
//
//  Created by fahreddin on 17.02.2022.
//

import Foundation
@testable import CryptocurrencyTrackerApp

class MockDatabaseManager: DatabaseProtocol {
    
    @Published var data: [CoinAssetModel] = []
    var dataPublisher: Published<[CoinAssetModel]>.Publisher { $data }
    
    func getData() {
        data = [
            CoinAssetModel(uuid: "0", symbol: "BTC", name: "Bitcoin", iconUrl: "", price: "599.99"),
            CoinAssetModel(uuid: "1", symbol: "ETH", name: "Ethereum", iconUrl: "", price: "369.58")
        ]
    }
    
}
