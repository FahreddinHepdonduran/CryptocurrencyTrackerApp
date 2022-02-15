//
//  CoinViewModel.swift
//  CryptocurrencyTrackerApp
//
//  Created by fahreddin on 15.02.2022.
//

import Foundation
import Combine
import SwiftUI

class CoinViewModel: ObservableObject {
    
    @Published var coins: [CoinAssetModel] = []
    var cancellables: Set<AnyCancellable> = []
    
    var database: DatabaseProtocol
    
    init(database: DatabaseProtocol = FirebaseManager()) {
        self.database = database
        subscribeToCoins()
        getData()
    }
    
    func subscribeToCoins() {
        database.dataPublisher.map({print($0); return $0})
            .assign(to: \.coins, on: self)
            .store(in: &cancellables)
    }
    
    func getData() {
        database.getData()
    }
    
}
