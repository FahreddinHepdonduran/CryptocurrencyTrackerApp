//
//  ContentView+CoinOrderExtensions.swift
//  CryptocurrencyTrackerApp
//
//  Created by fahreddin on 22.05.2022.
//

import Foundation

extension ContentView {
    
    func orderCoinsByPrice() -> [CoinAssetModel] {
        let sortedCoins = viewModel.coins.sorted {
            $0.doublePrice > $1.doublePrice
        }
        
        return sortedCoins
    }
    
    func top10Coins() -> [CoinAssetModel] {
        return orderCoinsByPrice().limit(10)
    }
    
}
