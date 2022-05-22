//
//  Sequence+Extensions.swift
//  CryptocurrencyTrackerApp
//
//  Created by fahreddin on 22.05.2022.
//

import Foundation

extension Sequence {
    
    func limit(_ max: Int) -> [Element] {
        return self.enumerated()
            .filter { $0.offset < max }
            .map { $0.element }
    }
    
}
