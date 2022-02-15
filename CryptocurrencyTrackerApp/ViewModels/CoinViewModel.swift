//
//  CoinViewModel.swift
//  CryptocurrencyTrackerApp
//
//  Created by fahreddin on 15.02.2022.
//

import Foundation
import Combine

class CoinViewModel: ObservableObject {
    
    @Published var coins: [CoinAssetModel] = []
    var cancellables: Set<AnyCancellable> = []
    
    var database: DatabaseProtocol
    
    init(database: DatabaseProtocol = FirebaseManager()) {
        self.database = database
        getCoinData()
    }
    
    func getCoinData() {
        database.dataPublisher.map({$0})
            .assign(to: \.coins, on: self)
            .store(in: &cancellables)
    }
    
}
