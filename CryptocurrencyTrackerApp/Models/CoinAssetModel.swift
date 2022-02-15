//
//  CoinAssetModel.swift
//  CryptocurrencyTrackerApp
//
//  Created by fahreddin on 11.02.2022.
//

import Foundation

struct CoinAssetModel: Codable, Identifiable {
    let uuid: String
    let symbol: String
    let name: String
    let iconUrl: String
    let price: String
}
