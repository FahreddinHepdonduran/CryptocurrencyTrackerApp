//
//  CoinAssetModel.swift
//  CryptocurrencyTrackerApp
//
//  Created by fahreddin on 11.02.2022.
//

import Foundation
import FirebaseFirestoreSwift

struct CoinAssetModel: Identifiable, Codable {
    
    @DocumentID var id: String?
    let uuid: String
    let symbol: String
    let name: String
    let iconUrl: String
    let price: String
    
    var roundedPrice: String {
        guard let doublePrice = Double(self.price)
        else {
            return self.price
        }
        
        return String(format: "%.3f", doublePrice)
    }
    
    var iconUrlStringToUrl: URL? {
        return URL(string: self.iconUrl)
    }
    
    var doublePrice: Double {
        guard let doublePrice = Double(self.price)
        else {
            return 0
        }
        
        return doublePrice
    }
    
}
